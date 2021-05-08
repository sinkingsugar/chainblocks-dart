library chainblocks;

import 'dart:ffi' as ffi;
import 'dart:io' show Platform, Directory;
import 'package:path/path.dart' as path;
import 'chainblocks_native.dart';

typedef CreateNode = ffi.Pointer<CBNodeRefOpaque> Function();
typedef DestroyNode = Function(ffi.Pointer<CBNodeRefOpaque>);

// lol https://github.com/dart-lang/sdk/issues/35770
abstract class Disposable {
  void dispose();
}

class Core {
  static ffi.Pointer<CBCore>? core;

  static CreateNode? createNode;
  static DestroyNode? destroyNode;

  open() {
    // Open the dynamic library
    var libraryPath = path.join(Directory.current.path, 'libcb.so');
    if (Platform.isMacOS)
      libraryPath = path.join(Directory.current.path, 'libcb.dylib');
    if (Platform.isWindows)
      libraryPath = path.join(Directory.current.path, 'cb.dll');

    final dylib = ffi.DynamicLibrary.open(libraryPath);
    final cbNative = ChainblocksNative(dylib);
    core = cbNative.chainblocksInterface(CHAINBLOCKS_CURRENT_ABI);
    createNode = Core.core!.ref.createNode.asFunction();
    destroyNode = Core.core!.ref.destroyNode.asFunction();
  }
}

class Node extends Disposable {
  late ffi.Pointer<CBNodeRefOpaque> nnode;

  Node() {
    nnode = Core.createNode!();
  }

  @override
  void dispose() {
    Core.destroyNode!(nnode);
  }
}
