// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

class ChainblocksNative {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  ChainblocksNative(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  ChainblocksNative.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  ffi.Pointer<CBCore> chainblocksInterface(
    int abi_version,
  ) {
    return _chainblocksInterface(
      abi_version,
    );
  }

  late final _chainblocksInterface_ptr =
      _lookup<ffi.NativeFunction<_c_chainblocksInterface>>(
          'chainblocksInterface');
  late final _dart_chainblocksInterface _chainblocksInterface =
      _chainblocksInterface_ptr.asFunction<_dart_chainblocksInterface>();
}

class __darwin_pthread_handler_rec extends ffi.Struct {
  external ffi.Pointer<ffi.NativeFunction<_typedefC_1>> __routine;

  external ffi.Pointer<ffi.Void> __arg;

  external ffi.Pointer<__darwin_pthread_handler_rec> __next;
}

class _opaque_pthread_attr_t extends ffi.Opaque {}

class _opaque_pthread_cond_t extends ffi.Opaque {}

class _opaque_pthread_condattr_t extends ffi.Opaque {}

class _opaque_pthread_mutex_t extends ffi.Opaque {}

class _opaque_pthread_mutexattr_t extends ffi.Opaque {}

class _opaque_pthread_once_t extends ffi.Opaque {}

class _opaque_pthread_rwlock_t extends ffi.Opaque {}

class _opaque_pthread_rwlockattr_t extends ffi.Opaque {}

class _opaque_pthread_t extends ffi.Opaque {}

abstract class CBType {
  static const int None = 0;
  static const int Any = 1;
  static const int Enum = 2;
  static const int Bool = 3;
  static const int Int = 4;
  static const int Int2 = 5;
  static const int Int3 = 6;
  static const int Int4 = 7;
  static const int Int8 = 8;
  static const int Int16 = 9;
  static const int Float = 10;
  static const int Float2 = 11;
  static const int Float3 = 12;
  static const int Float4 = 13;
  static const int Color = 14;
  static const int Block = 15;
  static const int EndOfBlittableTypes = 50;
  static const int Bytes = 51;
  static const int String = 52;
  static const int Path = 53;
  static const int ContextVar = 54;
  static const int Image = 55;
  static const int Seq = 56;
  static const int Table = 57;
  static const int Chain = 58;
  static const int Object = 59;
  static const int Array = 60;
  static const int Set = 61;
  static const int Audio = 62;
}

abstract class CBChainState {
  static const int Continue = 0;
  static const int Return = 1;
  static const int Rebase = 2;
  static const int Restart = 3;
  static const int Stop = 4;
}

abstract class CBInlineBlocks {
  static const int NotInline = 0;
  static const int NoopBlock = 1;
  static const int CoreConst = 2;
  static const int CoreSleep = 3;
  static const int CoreInput = 4;
  static const int CoreRepeat = 5;
  static const int CoreOnce = 6;
  static const int CoreGet = 7;
  static const int CoreSet = 8;
  static const int CoreRefRegular = 9;
  static const int CoreRefTable = 10;
  static const int CoreUpdate = 11;
  static const int CoreSwap = 12;
  static const int CoreTakeSeq = 13;
  static const int CoreTakeInts = 14;
  static const int CoreTakeFloats = 15;
  static const int CoreTakeColor = 16;
  static const int CoreTakeBytes = 17;
  static const int CoreTakeString = 18;
  static const int CoreTakeTable = 19;
  static const int CorePush = 20;
  static const int CoreIs = 21;
  static const int CoreIsNot = 22;
  static const int CoreAnd = 23;
  static const int CoreOr = 24;
  static const int CoreNot = 25;
  static const int CoreIsMore = 26;
  static const int CoreIsLess = 27;
  static const int CoreIsMoreEqual = 28;
  static const int CoreIsLessEqual = 29;
  static const int MathAdd = 30;
  static const int MathSubtract = 31;
  static const int MathMultiply = 32;
  static const int MathDivide = 33;
  static const int MathXor = 34;
  static const int MathAnd = 35;
  static const int MathOr = 36;
  static const int MathMod = 37;
  static const int MathLShift = 38;
  static const int MathRShift = 39;
  static const int MathAbs = 40;
  static const int MathExp = 41;
  static const int MathExp2 = 42;
  static const int MathExpm1 = 43;
  static const int MathLog = 44;
  static const int MathLog10 = 45;
  static const int MathLog2 = 46;
  static const int MathLog1p = 47;
  static const int MathSqrt = 48;
  static const int MathFastSqrt = 49;
  static const int MathFastInvSqrt = 50;
  static const int MathCbrt = 51;
  static const int MathSin = 52;
  static const int MathCos = 53;
  static const int MathTan = 54;
  static const int MathAsin = 55;
  static const int MathAcos = 56;
  static const int MathAtan = 57;
  static const int MathSinh = 58;
  static const int MathCosh = 59;
  static const int MathTanh = 60;
  static const int MathAsinh = 61;
  static const int MathAcosh = 62;
  static const int MathAtanh = 63;
  static const int MathErf = 64;
  static const int MathErfc = 65;
  static const int MathTGamma = 66;
  static const int MathLGamma = 67;
  static const int MathCeil = 68;
  static const int MathFloor = 69;
  static const int MathTrunc = 70;
  static const int MathRound = 71;
}

class CBVarPayload extends ffi.Opaque {}

class CBPayloadArray extends ffi.Struct {
  external ffi.Pointer<CBVarPayload> elements;

  @ffi.Uint32()
  external int len;

  @ffi.Uint32()
  external int cap;
}

class CBObjectInfo extends ffi.Struct {
  external ffi.Pointer<ffi.Int8> name;

  external ffi.Pointer<ffi.NativeFunction<CBObjectSerializer>> serialize;

  external ffi.Pointer<ffi.NativeFunction<CBObjectSerializerFree>> free;

  external ffi.Pointer<ffi.NativeFunction<CBObjectDeserializer>> deserialize;

  external ffi.Pointer<ffi.NativeFunction<CBObjectReference>> reference;

  external ffi.Pointer<ffi.NativeFunction<CBObjectRelease>> release;

  external ffi.Pointer<ffi.NativeFunction<CBObjectHash>> hash;
}

class CBVar extends ffi.Opaque {}

class CBSeq extends ffi.Struct {
  external ffi.Pointer<CBVar> elements;

  @ffi.Uint32()
  external int len;

  @ffi.Uint32()
  external int cap;
}

class CBTable extends ffi.Struct {
  external ffi.Pointer<ffi.Void> opaque;

  external ffi.Pointer<CBTableInterface> api;
}

class CBTableInterface extends ffi.Struct {
  external ffi.Pointer<ffi.NativeFunction<CBTableGetIterator>> tableGetIterator;

  external ffi.Pointer<ffi.NativeFunction<CBTableNext>> tableNext;

  external ffi.Pointer<ffi.NativeFunction<CBTableSize>> tableSize;

  external ffi.Pointer<ffi.NativeFunction<CBTableContains>> tableContains;

  external ffi.Pointer<ffi.NativeFunction<CBTableAt>> tableAt;

  external ffi.Pointer<ffi.NativeFunction<CBTableRemove>> tableRemove;

  external ffi.Pointer<ffi.NativeFunction<CBTableClear>> tableClear;

  external ffi.Pointer<ffi.NativeFunction<CBTableFree>> tableFree;
}

class CBSetnterface extends ffi.Opaque {}

class CBSetInterface extends ffi.Opaque {}

class CBSet extends ffi.Struct {
  external ffi.Pointer<ffi.Void> opaque;

  external ffi.Pointer<CBSetInterface> api;
}

class CBChain extends ffi.Opaque {}

class CBChainRefOpaque extends ffi.Opaque {}

class CBOptionalString extends ffi.Struct {
  external ffi.Pointer<ffi.Int8> string;

  @ffi.Uint32()
  external int crc;
}

class CBTypeInfo extends ffi.Struct {
  @ffi.Int32()
  external int basicType;

  @ffi.Uint32()
  external int fixedSize;

  @ffi.Int32()
  external int innerType;

  @ffi.Uint8()
  external int recursiveSelf;
}

class CBTypesInfo extends ffi.Struct {
  external ffi.Pointer<CBTypeInfo> elements;

  @ffi.Uint32()
  external int len;

  @ffi.Uint32()
  external int cap;
}

class CBExposedTypeInfo extends ffi.Struct {
  external ffi.Pointer<ffi.Int8> name;

  external CBOptionalString help;

  external CBTypeInfo exposedType;

  @ffi.Uint8()
  external int isMutable;

  @ffi.Uint8()
  external int isProtected;

  @ffi.Uint8()
  external int isTableEntry;

  @ffi.Uint8()
  external int global;

  external ffi.Pointer<CBChain> scope;
}

class CBExposedTypesInfo extends ffi.Struct {
  external ffi.Pointer<CBExposedTypeInfo> elements;

  @ffi.Uint32()
  external int len;

  @ffi.Uint32()
  external int cap;
}

class CBComposeResult extends ffi.Opaque {}

class CBParameterInfo extends ffi.Struct {
  external ffi.Pointer<ffi.Int8> name;

  external CBOptionalString help;

  external CBTypesInfo valueTypes;
}

class CBParametersInfo extends ffi.Struct {
  external ffi.Pointer<CBParameterInfo> elements;

  @ffi.Uint32()
  external int len;

  @ffi.Uint32()
  external int cap;
}

class CBContext extends ffi.Opaque {}

class CBlock extends ffi.Struct {
  @ffi.Int32()
  external int inlineBlockId;

  @ffi.Uint8()
  external int owned;

  external ffi.Pointer<ffi.NativeFunction<CBNameProc>> name;

  external ffi.Pointer<ffi.NativeFunction<CBHashProc>> hash;

  external ffi.Pointer<ffi.NativeFunction<CBHelpProc>> help;

  external ffi.Pointer<ffi.NativeFunction<CBSetupProc>> setup;

  external ffi.Pointer<ffi.NativeFunction<CBDestroyProc>> destroy;

  external ffi.Pointer<ffi.NativeFunction<CBInputTypesProc>> inputTypes;

  external ffi.Pointer<ffi.NativeFunction<CBOutputTypesProc>> outputTypes;

  external ffi.Pointer<ffi.NativeFunction<CBExposedVariablesProc>>
      exposedVariables;

  external ffi.Pointer<ffi.NativeFunction<CBRequiredVariablesProc>>
      requiredVariables;

  external ffi.Pointer<ffi.NativeFunction<CBComposeProc>> compose;

  external ffi.Pointer<ffi.NativeFunction<CBComposedProc>> composed;

  external ffi.Pointer<ffi.NativeFunction<CBParametersProc>> parameters;

  external ffi.Pointer<ffi.NativeFunction<CBSetParamProc>> setParam;

  external ffi.Pointer<ffi.NativeFunction<CBGetParamProc>> getParam;

  external ffi.Pointer<ffi.NativeFunction<CBWarmupProc>> warmup;

  external ffi.Pointer<ffi.NativeFunction<CBActivateProc>> activate;

  external ffi.Pointer<ffi.NativeFunction<CBCleanupProc>> cleanup;

  external ffi.Pointer<ffi.NativeFunction<CBNextFrameProc>> nextFrame;

  external ffi.Pointer<ffi.NativeFunction<CBMutateProc>> mutate;

  external ffi.Pointer<ffi.NativeFunction<CBCrossoverProc>> crossover;

  external ffi.Pointer<ffi.NativeFunction<CBGetStateProc>> getState;

  external ffi.Pointer<ffi.NativeFunction<CBSetStateProc>> setState;

  external ffi.Pointer<ffi.NativeFunction<CBResetStateProc>> resetState;
}

class CBInstanceData extends ffi.Struct {
  external ffi.Pointer<CBlock> block;

  external ffi.Pointer<CBChain> chain;

  external CBTypeInfo inputType;

  external CBExposedTypesInfo shared;

  @ffi.Uint8()
  external int onWorkerThread;

  external CBTypesInfo outputTypes;

  external ffi.Pointer<ffi.NativeFunction<CBComposeError>> reportError;

  external ffi.Pointer<ffi.Void> privateContext;
}

class CBChainProviderUpdate extends ffi.Struct {
  external ffi.Pointer<ffi.Int8> error;

  external ffi.Pointer<CBChain> chain;
}

class CBChainProvider extends ffi.Struct {
  external ffi.Pointer<ffi.NativeFunction<CBProviderReset>> reset;

  external ffi.Pointer<ffi.NativeFunction<CBProviderReady>> ready;

  external ffi.Pointer<ffi.NativeFunction<CBProviderSetup>> setup;

  external ffi.Pointer<ffi.NativeFunction<CBProviderUpdated>> updated;

  external ffi.Pointer<ffi.NativeFunction<CBProviderAcquire>> acquire;

  external ffi.Pointer<ffi.NativeFunction<CBProviderReleaseChain>> release;

  external ffi.Pointer<ffi.Void> userData;
}

class CBNode extends ffi.Opaque {}

class CBNodeRefOpaque extends ffi.Opaque {}

class CBFlow extends ffi.Struct {
  external ffi.Pointer<CBChain> chain;
}

class CBlocks extends ffi.Struct {
  external ffi.Pointer<ffi.Pointer<CBlock>> elements;

  @ffi.Uint32()
  external int len;

  @ffi.Uint32()
  external int cap;
}

class CBStrings extends ffi.Struct {
  external ffi.Pointer<ffi.Pointer<ffi.Int8>> elements;

  @ffi.Uint32()
  external int len;

  @ffi.Uint32()
  external int cap;
}

class CBColor extends ffi.Struct {
  @ffi.Uint8()
  external int r;

  @ffi.Uint8()
  external int g;

  @ffi.Uint8()
  external int b;

  @ffi.Uint8()
  external int a;
}

class CBImage extends ffi.Struct {
  @ffi.Uint16()
  external int width;

  @ffi.Uint16()
  external int height;

  @ffi.Uint8()
  external int channels;

  @ffi.Uint8()
  external int flags;

  external ffi.Pointer<ffi.Uint8> data;
}

class CBAudio extends ffi.Struct {
  @ffi.Uint32()
  external int sampleRate;

  @ffi.Uint16()
  external int nsamples;

  @ffi.Uint16()
  external int channels;

  external ffi.Pointer<ffi.Float> samples;
}

class CBEnumInfo extends ffi.Struct {
  external ffi.Pointer<ffi.Int8> name;

  external CBStrings labels;
}

abstract class CBRunChainOutputState {
  static const int Running = 0;
  static const int Restarted = 1;
  static const int Stopped = 2;
  static const int Failed = 3;
}

class CBRunChainOutput extends ffi.Opaque {}

class CBChainInfo extends ffi.Struct {
  external ffi.Pointer<ffi.Int8> name;

  @ffi.Uint8()
  external int looped;

  @ffi.Uint8()
  external int unsafe;

  external ffi.Pointer<CBChain> chain;

  external CBlocks blocks;

  @ffi.Uint8()
  external int isRunning;
}

class CBLoggingOptions extends ffi.Struct {
  @ffi.Uint32()
  external int maxSize;
}

class CBCore extends ffi.Struct {
  external ffi.Pointer<ffi.NativeFunction<CBTableNew>> tableNew;

  external ffi.Pointer<ffi.NativeFunction<CBSetNew>> setNew;

  external ffi.Pointer<ffi.NativeFunction<CBComposeBlocks>> composeBlocks;

  external ffi.Pointer<ffi.NativeFunction<CBRunBlocks>> runBlocks;

  external ffi.Pointer<ffi.NativeFunction<CBLog>> log;

  external ffi.Pointer<ffi.NativeFunction<CBSetLoggingOptions>>
      setLoggingOptions;

  external ffi.Pointer<ffi.NativeFunction<CBCreateBlock>> createBlock;

  external ffi.Pointer<ffi.NativeFunction<CBValidateSetParam>> validateSetParam;

  external ffi.Pointer<ffi.NativeFunction<CBCreateChain>> createChain;

  external ffi.Pointer<ffi.NativeFunction<CBSetChainName>> setChainName;

  external ffi.Pointer<ffi.NativeFunction<CBSetChainLooped>> setChainLooped;

  external ffi.Pointer<ffi.NativeFunction<CBSetChainUnsafe>> setChainUnsafe;

  external ffi.Pointer<ffi.NativeFunction<CBAddBlock>> addBlock;

  external ffi.Pointer<ffi.NativeFunction<CBRemBlock>> removeBlock;

  external ffi.Pointer<ffi.NativeFunction<CBDestroyChain>> destroyChain;

  external ffi.Pointer<ffi.NativeFunction<CBStopChain>> stopChain;

  external ffi.Pointer<ffi.NativeFunction<CBComposeChain>> composeChain;

  external ffi.Pointer<ffi.NativeFunction<CBRunChain>> runChain;

  external ffi.Pointer<ffi.NativeFunction<CBGetChainInfo>> getChainInfo;

  external ffi.Pointer<ffi.NativeFunction<CBGetGlobalChain>> getGlobalChain;

  external ffi.Pointer<ffi.NativeFunction<CBSetGlobalChain>> setGlobalChain;

  external ffi.Pointer<ffi.NativeFunction<CBUnsetGlobalChain>> unsetGlobalChain;

  external ffi.Pointer<ffi.NativeFunction<CBCreateNode>> createNode;

  external ffi.Pointer<ffi.NativeFunction<CBDestroyNode>> destroyNode;

  external ffi.Pointer<ffi.NativeFunction<CBSchedule>> schedule;

  external ffi.Pointer<ffi.NativeFunction<CBSchedule>> unschedule;

  external ffi.Pointer<ffi.NativeFunction<CBTick>> tick;

  external ffi.Pointer<ffi.NativeFunction<CBSleep>> sleep;

  external ffi.Pointer<ffi.NativeFunction<CBGetRootPath>> getRootPath;

  external ffi.Pointer<ffi.NativeFunction<CBSetRootPath>> setRootPath;

  external ffi.Pointer<ffi.NativeFunction<CBRunAsyncActivate>> asyncActivate;

  external ffi.Pointer<ffi.NativeFunction<CBGetBlocks>> getBlocks;

  external ffi.Pointer<ffi.NativeFunction<CBRegisterBlock>> registerBlock;

  external ffi.Pointer<ffi.NativeFunction<CBRegisterObjectType>>
      registerObjectType;

  external ffi.Pointer<ffi.NativeFunction<CBRegisterEnumType>> registerEnumType;

  external ffi.Pointer<ffi.NativeFunction<CBRegisterRunLoopCallback>>
      registerRunLoopCallback;

  external ffi.Pointer<ffi.NativeFunction<CBUnregisterRunLoopCallback>>
      unregisterRunLoopCallback;

  external ffi.Pointer<ffi.NativeFunction<CBRegisterExitCallback>>
      registerExitCallback;

  external ffi.Pointer<ffi.NativeFunction<CBUnregisterExitCallback>>
      unregisterExitCallback;

  external ffi.Pointer<ffi.NativeFunction<CBReferenceVariable>>
      referenceVariable;

  external ffi.Pointer<ffi.NativeFunction<CBReferenceChainVariable>>
      referenceChainVariable;

  external ffi.Pointer<ffi.NativeFunction<CBReleaseVariable>> releaseVariable;

  external ffi.Pointer<ffi.NativeFunction<CBSuspend>> suspend;

  external ffi.Pointer<ffi.NativeFunction<CBGetState>> getState;

  external ffi.Pointer<ffi.NativeFunction<CBAbortChain>> abortChain;

  external ffi.Pointer<ffi.NativeFunction<CBCloneVar>> cloneVar;

  external ffi.Pointer<ffi.NativeFunction<CBDestroyVar>> destroyVar;

  external ffi.Pointer<ffi.NativeFunction<CBReadCachedString>> readCachedString;

  external ffi.Pointer<ffi.NativeFunction<CBWriteCachedString>>
      writeCachedString;

  external ffi.Pointer<ffi.NativeFunction<CBSeqFree>> seqFree;

  external ffi.Pointer<ffi.NativeFunction<CBSeqPush>> seqPush;

  external ffi.Pointer<ffi.NativeFunction<CBSeqInsert>> seqInsert;

  external ffi.Pointer<ffi.NativeFunction<CBSeqPop>> seqPop;

  external ffi.Pointer<ffi.NativeFunction<CBSeqResize>> seqResize;

  external ffi.Pointer<ffi.NativeFunction<CBSeqFastDelete>> seqFastDelete;

  external ffi.Pointer<ffi.NativeFunction<CBSeqSlowDelete>> seqSlowDelete;

  external ffi.Pointer<ffi.NativeFunction<CBTypesInfoFree>> typesFree;

  external ffi.Pointer<ffi.NativeFunction<CBTypesInfoPush>> typesPush;

  external ffi.Pointer<ffi.NativeFunction<CBTypesInfoInsert>> typesInsert;

  external ffi.Pointer<ffi.NativeFunction<CBTypesInfoPop>> typesPop;

  external ffi.Pointer<ffi.NativeFunction<CBTypesInfoResize>> typesResize;

  external ffi.Pointer<ffi.NativeFunction<CBTypesInfoFastDelete>>
      typesFastDelete;

  external ffi.Pointer<ffi.NativeFunction<CBTypesInfoSlowDelete>>
      typesSlowDelete;

  external ffi.Pointer<ffi.NativeFunction<CBParametersInfoFree>> paramsFree;

  external ffi.Pointer<ffi.NativeFunction<CBParametersInfoPush>> paramsPush;

  external ffi.Pointer<ffi.NativeFunction<CBParametersInfoInsert>> paramsInsert;

  external ffi.Pointer<ffi.NativeFunction<CBParametersInfoPop>> paramsPop;

  external ffi.Pointer<ffi.NativeFunction<CBParametersInfoResize>> paramsResize;

  external ffi.Pointer<ffi.NativeFunction<CBParametersInfoFastDelete>>
      paramsFastDelete;

  external ffi.Pointer<ffi.NativeFunction<CBParametersInfoSlowDelete>>
      paramsSlowDelete;

  external ffi.Pointer<ffi.NativeFunction<CBlocksFree>> blocksFree;

  external ffi.Pointer<ffi.NativeFunction<CBlocksPush>> blocksPush;

  external ffi.Pointer<ffi.NativeFunction<CBlocksInsert>> blocksInsert;

  external ffi.Pointer<ffi.NativeFunction<CBlocksPop>> blocksPop;

  external ffi.Pointer<ffi.NativeFunction<CBlocksResize>> blocksResize;

  external ffi.Pointer<ffi.NativeFunction<CBlocksFastDelete>> blocksFastDelete;

  external ffi.Pointer<ffi.NativeFunction<CBlocksSlowDelete>> blocksSlowDelete;

  external ffi.Pointer<ffi.NativeFunction<CBExposedTypesInfoFree>> expTypesFree;

  external ffi.Pointer<ffi.NativeFunction<CBExposedTypesInfoPush>> expTypesPush;

  external ffi.Pointer<ffi.NativeFunction<CBExposedTypesInfoInsert>>
      expTypesInsert;

  external ffi.Pointer<ffi.NativeFunction<CBExposedTypesInfoPop>> expTypesPop;

  external ffi.Pointer<ffi.NativeFunction<CBExposedTypesInfoResize>>
      expTypesResize;

  external ffi.Pointer<ffi.NativeFunction<CBExposedTypesInfoFastDelete>>
      expTypesFastDelete;

  external ffi.Pointer<ffi.NativeFunction<CBExposedTypesInfoSlowDelete>>
      expTypesSlowDelete;

  external ffi.Pointer<ffi.NativeFunction<CBStringsFree>> stringsFree;

  external ffi.Pointer<ffi.NativeFunction<CBStringsPush>> stringsPush;

  external ffi.Pointer<ffi.NativeFunction<CBStringsInsert>> stringsInsert;

  external ffi.Pointer<ffi.NativeFunction<CBStringsPop>> stringsPop;

  external ffi.Pointer<ffi.NativeFunction<CBStringsResize>> stringsResize;

  external ffi.Pointer<ffi.NativeFunction<CBStringsFastDelete>>
      stringsFastDelete;

  external ffi.Pointer<ffi.NativeFunction<CBStringsSlowDelete>>
      stringsSlowDelete;
}

const int true_1 = 1;

const int false_1 = 0;

const int __bool_true_false_are_defined = 1;

const int __DARWIN_ONLY_64_BIT_INO_T = 0;

const int __DARWIN_ONLY_UNIX_CONFORMANCE = 1;

const int __DARWIN_ONLY_VERS_1050 = 0;

const int __DARWIN_UNIX03 = 1;

const int __DARWIN_64_BIT_INO_T = 1;

const int __DARWIN_VERS_1050 = 1;

const int __DARWIN_NON_CANCELABLE = 0;

const String __DARWIN_SUF_64_BIT_INO_T = '\$INODE64';

const String __DARWIN_SUF_1050 = '\$1050';

const String __DARWIN_SUF_EXTSN = '\$DARWIN_EXTSN';

const int __DARWIN_C_ANSI = 4096;

const int __DARWIN_C_FULL = 900000;

const int __DARWIN_C_LEVEL = 900000;

const int __STDC_WANT_LIB_EXT1__ = 1;

const int __DARWIN_NO_LONG_LONG = 0;

const int _DARWIN_FEATURE_64_BIT_INODE = 1;

const int _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = 1;

const int _DARWIN_FEATURE_UNIX_CONFORMANCE = 3;

const int __DARWIN_NULL = 0;

const int __PTHREAD_SIZE__ = 8176;

const int __PTHREAD_ATTR_SIZE__ = 56;

const int __PTHREAD_MUTEXATTR_SIZE__ = 8;

const int __PTHREAD_MUTEX_SIZE__ = 56;

const int __PTHREAD_CONDATTR_SIZE__ = 8;

const int __PTHREAD_COND_SIZE__ = 40;

const int __PTHREAD_ONCE_SIZE__ = 8;

const int __PTHREAD_RWLOCK_SIZE__ = 192;

const int __PTHREAD_RWLOCKATTR_SIZE__ = 16;

const int __DARWIN_WCHAR_MAX = 2147483647;

const int __DARWIN_WCHAR_MIN = -2147483648;

const int __DARWIN_WEOF = -1;

const int _FORTIFY_SOURCE = 2;

const int NULL = 0;

const int USER_ADDR_NULL = 0;

const int __WORDSIZE = 64;

const int INT8_MAX = 127;

const int INT16_MAX = 32767;

const int INT32_MAX = 2147483647;

const int INT64_MAX = 9223372036854775807;

const int INT8_MIN = -128;

const int INT16_MIN = -32768;

const int INT32_MIN = -2147483648;

const int INT64_MIN = -9223372036854775808;

const int UINT8_MAX = 255;

const int UINT16_MAX = 65535;

const int UINT32_MAX = 4294967295;

const int UINT64_MAX = -1;

const int INT_LEAST8_MIN = -128;

const int INT_LEAST16_MIN = -32768;

const int INT_LEAST32_MIN = -2147483648;

const int INT_LEAST64_MIN = -9223372036854775808;

const int INT_LEAST8_MAX = 127;

const int INT_LEAST16_MAX = 32767;

const int INT_LEAST32_MAX = 2147483647;

const int INT_LEAST64_MAX = 9223372036854775807;

const int UINT_LEAST8_MAX = 255;

const int UINT_LEAST16_MAX = 65535;

const int UINT_LEAST32_MAX = 4294967295;

const int UINT_LEAST64_MAX = -1;

const int INT_FAST8_MIN = -128;

const int INT_FAST16_MIN = -32768;

const int INT_FAST32_MIN = -2147483648;

const int INT_FAST64_MIN = -9223372036854775808;

const int INT_FAST8_MAX = 127;

const int INT_FAST16_MAX = 32767;

const int INT_FAST32_MAX = 2147483647;

const int INT_FAST64_MAX = 9223372036854775807;

const int UINT_FAST8_MAX = 255;

const int UINT_FAST16_MAX = 65535;

const int UINT_FAST32_MAX = 4294967295;

const int UINT_FAST64_MAX = -1;

const int INTPTR_MAX = 9223372036854775807;

const int INTPTR_MIN = -9223372036854775808;

const int UINTPTR_MAX = -1;

const int INTMAX_MAX = 9223372036854775807;

const int UINTMAX_MAX = -1;

const int INTMAX_MIN = -9223372036854775808;

const int PTRDIFF_MIN = -9223372036854775808;

const int PTRDIFF_MAX = 9223372036854775807;

const int SIZE_MAX = -1;

const int RSIZE_MAX = 9223372036854775807;

const int WCHAR_MAX = 2147483647;

const int WCHAR_MIN = -2147483648;

const int WINT_MIN = -2147483648;

const int WINT_MAX = 2147483647;

const int SIG_ATOMIC_MIN = -2147483648;

const int SIG_ATOMIC_MAX = 2147483647;

const int CBIMAGE_FLAGS_NONE = 0;

const int CBIMAGE_FLAGS_BGRA = 1;

const int CBIMAGE_FLAGS_PREMULTIPLIED_ALPHA = 2;

const int CBIMAGE_FLAGS_16BITS_INT = 4;

const int CBIMAGE_FLAGS_32BITS_FLOAT = 8;

const int CBVAR_FLAGS_NONE = 0;

const int CBVAR_FLAGS_USES_OBJINFO = 1;

const int CBVAR_FLAGS_REF_COUNTED = 2;

const int CBVAR_FLAGS_SHOULD_SERIALIZE = 4;

const int CHAINBLOCKS_CURRENT_ABI = 538968321;

const String CHAINBLOCKS_CURRENT_ABI_STR = '0x20200101';

const int CB_DEBUG_MODE = 1;

typedef _c_chainblocksInterface = ffi.Pointer<CBCore> Function(
  ffi.Uint32 abi_version,
);

typedef _dart_chainblocksInterface = ffi.Pointer<CBCore> Function(
  int abi_version,
);

typedef _typedefC_1 = ffi.Void Function(
  ffi.Pointer<ffi.Void>,
);

typedef CBObjectSerializer = ffi.Uint8 Function(
  ffi.Pointer<ffi.Void>,
  ffi.Pointer<ffi.Pointer<ffi.Uint8>>,
  ffi.Pointer<ffi.Uint64>,
  ffi.Pointer<ffi.Pointer<ffi.Void>>,
);

typedef CBObjectSerializerFree = ffi.Void Function(
  ffi.Pointer<ffi.Void>,
);

typedef CBObjectDeserializer = ffi.Pointer<ffi.Void> Function(
  ffi.Pointer<ffi.Uint8>,
  ffi.Uint64,
);

typedef CBObjectReference = ffi.Void Function(
  ffi.Pointer<ffi.Void>,
);

typedef CBObjectRelease = ffi.Void Function(
  ffi.Pointer<ffi.Void>,
);

typedef CBObjectHash = ffi.Uint64 Function(
  ffi.Pointer<ffi.Void>,
);

typedef CBTableGetIterator = ffi.Void Function(
  CBTable,
  ffi.Pointer<ffi.Pointer<ffi.Int8>>,
);

typedef CBTableNext = ffi.Uint8 Function(
  CBTable,
  ffi.Pointer<ffi.Pointer<ffi.Int8>>,
  ffi.Pointer<ffi.Pointer<ffi.Int8>>,
  ffi.Pointer<CBVar>,
);

typedef CBTableSize = ffi.Uint64 Function(
  CBTable,
);

typedef CBTableContains = ffi.Uint8 Function(
  CBTable,
  ffi.Pointer<ffi.Int8>,
);

typedef CBTableAt = ffi.Pointer<CBVar> Function(
  CBTable,
  ffi.Pointer<ffi.Int8>,
);

typedef CBTableRemove = ffi.Void Function(
  CBTable,
  ffi.Pointer<ffi.Int8>,
);

typedef CBTableClear = ffi.Void Function(
  CBTable,
);

typedef CBTableFree = ffi.Void Function(
  CBTable,
);

typedef CBNameProc = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<CBlock>,
);

typedef CBHashProc = ffi.Uint32 Function(
  ffi.Pointer<CBlock>,
);

typedef CBHelpProc = CBOptionalString Function(
  ffi.Pointer<CBlock>,
);

typedef CBSetupProc = ffi.Void Function(
  ffi.Pointer<CBlock>,
);

typedef CBDestroyProc = ffi.Void Function(
  ffi.Pointer<CBlock>,
);

typedef CBInputTypesProc = CBTypesInfo Function(
  ffi.Pointer<CBlock>,
);

typedef CBOutputTypesProc = CBTypesInfo Function(
  ffi.Pointer<CBlock>,
);

typedef CBExposedVariablesProc = CBExposedTypesInfo Function(
  ffi.Pointer<CBlock>,
);

typedef CBRequiredVariablesProc = CBExposedTypesInfo Function(
  ffi.Pointer<CBlock>,
);

typedef CBComposeProc = CBTypeInfo Function(
  ffi.Pointer<CBlock>,
  CBInstanceData,
);

typedef CBComposedProc = ffi.Void Function(
  ffi.Pointer<CBlock>,
  ffi.Pointer<CBChain>,
  ffi.Pointer<CBComposeResult>,
);

typedef CBParametersProc = CBParametersInfo Function(
  ffi.Pointer<CBlock>,
);

typedef CBSetParamProc = ffi.Void Function(
  ffi.Pointer<CBlock>,
  ffi.Int32,
  ffi.Pointer<CBVar>,
);

typedef CBGetParamProc = CBVar Function(
  ffi.Pointer<CBlock>,
  ffi.Int32,
);

typedef CBWarmupProc = ffi.Void Function(
  ffi.Pointer<CBlock>,
  ffi.Pointer<CBContext>,
);

typedef CBActivateProc = CBVar Function(
  ffi.Pointer<CBlock>,
  ffi.Pointer<CBContext>,
  ffi.Pointer<CBVar>,
);

typedef CBCleanupProc = ffi.Void Function(
  ffi.Pointer<CBlock>,
);

typedef CBNextFrameProc = ffi.Void Function(
  ffi.Pointer<CBlock>,
  ffi.Pointer<CBContext>,
);

typedef CBMutateProc = ffi.Void Function(
  ffi.Pointer<CBlock>,
  CBTable,
);

typedef CBCrossoverProc = ffi.Void Function(
  ffi.Pointer<CBlock>,
  ffi.Pointer<CBVar>,
  ffi.Pointer<CBVar>,
);

typedef CBGetStateProc = CBVar Function(
  ffi.Pointer<CBlock>,
);

typedef CBSetStateProc = ffi.Void Function(
  ffi.Pointer<CBlock>,
  ffi.Pointer<CBVar>,
);

typedef CBResetStateProc = ffi.Void Function(
  ffi.Pointer<CBlock>,
);

typedef CBComposeError = ffi.Void Function(
  ffi.Pointer<ffi.Void>,
  ffi.Pointer<ffi.Int8>,
  ffi.Uint8,
);

typedef CBProviderReset = ffi.Void Function(
  ffi.Pointer<CBChainProvider>,
);

typedef CBProviderReady = ffi.Uint8 Function(
  ffi.Pointer<CBChainProvider>,
);

typedef CBProviderSetup = ffi.Void Function(
  ffi.Pointer<CBChainProvider>,
  ffi.Pointer<ffi.Int8>,
  CBInstanceData,
);

typedef CBProviderUpdated = ffi.Uint8 Function(
  ffi.Pointer<CBChainProvider>,
);

typedef CBProviderAcquire = CBChainProviderUpdate Function(
  ffi.Pointer<CBChainProvider>,
);

typedef CBProviderReleaseChain = ffi.Void Function(
  ffi.Pointer<CBChainProvider>,
  ffi.Pointer<CBChain>,
);

typedef CBTableNew = CBTable Function();

typedef CBSetNew = CBSet Function();

typedef CBValidationCallback = ffi.Void Function(
  ffi.Pointer<CBlock>,
  ffi.Pointer<ffi.Int8>,
  ffi.Uint8,
  ffi.Pointer<ffi.Void>,
);

typedef CBComposeBlocks = CBComposeResult Function(
  CBlocks,
  ffi.Pointer<ffi.NativeFunction<CBValidationCallback>>,
  ffi.Pointer<ffi.Void>,
  CBInstanceData,
);

typedef CBRunBlocks = ffi.Int32 Function(
  CBlocks,
  ffi.Pointer<CBContext>,
  ffi.Pointer<CBVar>,
  ffi.Pointer<CBVar>,
  ffi.Uint8,
);

typedef CBLog = ffi.Void Function(
  ffi.Pointer<ffi.Int8>,
);

typedef CBSetLoggingOptions = ffi.Void Function(
  CBLoggingOptions,
);

typedef CBCreateBlock = ffi.Pointer<CBlock> Function(
  ffi.Pointer<ffi.Int8>,
);

typedef CBValidateSetParam = ffi.Uint8 Function(
  ffi.Pointer<CBlock>,
  ffi.Int32,
  ffi.Pointer<CBVar>,
  ffi.Pointer<ffi.NativeFunction<CBValidationCallback>>,
  ffi.Pointer<ffi.Void>,
);

typedef CBCreateChain = ffi.Pointer<CBChainRefOpaque> Function();

typedef CBSetChainName = ffi.Void Function(
  ffi.Pointer<CBChainRefOpaque>,
  ffi.Pointer<ffi.Int8>,
);

typedef CBSetChainLooped = ffi.Void Function(
  ffi.Pointer<CBChainRefOpaque>,
  ffi.Uint8,
);

typedef CBSetChainUnsafe = ffi.Void Function(
  ffi.Pointer<CBChainRefOpaque>,
  ffi.Uint8,
);

typedef CBAddBlock = ffi.Void Function(
  ffi.Pointer<CBChainRefOpaque>,
  ffi.Pointer<CBlock>,
);

typedef CBRemBlock = ffi.Void Function(
  ffi.Pointer<CBChainRefOpaque>,
  ffi.Pointer<CBlock>,
);

typedef CBDestroyChain = ffi.Void Function(
  ffi.Pointer<CBChainRefOpaque>,
);

typedef CBStopChain = CBVar Function(
  ffi.Pointer<CBChainRefOpaque>,
);

typedef CBComposeChain = CBComposeResult Function(
  ffi.Pointer<CBChainRefOpaque>,
  ffi.Pointer<ffi.NativeFunction<CBValidationCallback>>,
  ffi.Pointer<ffi.Void>,
  CBInstanceData,
);

typedef CBRunChain = CBRunChainOutput Function(
  ffi.Pointer<CBChainRefOpaque>,
  ffi.Pointer<CBContext>,
  ffi.Pointer<CBVar>,
);

typedef CBGetChainInfo = CBChainInfo Function(
  ffi.Pointer<CBChainRefOpaque>,
);

typedef CBGetGlobalChain = ffi.Pointer<CBChainRefOpaque> Function(
  ffi.Pointer<ffi.Int8>,
);

typedef CBSetGlobalChain = ffi.Void Function(
  ffi.Pointer<ffi.Int8>,
  ffi.Pointer<CBChainRefOpaque>,
);

typedef CBUnsetGlobalChain = ffi.Void Function(
  ffi.Pointer<ffi.Int8>,
);

typedef CBCreateNode = ffi.Pointer<CBNodeRefOpaque> Function();

typedef CBDestroyNode = ffi.Void Function(
  ffi.Pointer<CBNodeRefOpaque>,
);

typedef CBSchedule = ffi.Void Function(
  ffi.Pointer<CBNodeRefOpaque>,
  ffi.Pointer<CBChainRefOpaque>,
);

typedef CBTick = ffi.Uint8 Function(
  ffi.Pointer<CBNodeRefOpaque>,
);

typedef CBSleep = ffi.Void Function(
  ffi.Double,
  ffi.Uint8,
);

typedef CBGetRootPath = ffi.Pointer<ffi.Int8> Function();

typedef CBSetRootPath = ffi.Void Function(
  ffi.Pointer<ffi.Int8>,
);

typedef CBAsyncActivateProc = CBVar Function(
  ffi.Pointer<CBContext>,
  ffi.Pointer<ffi.Void>,
);

typedef CBRunAsyncActivate = CBVar Function(
  ffi.Pointer<CBContext>,
  ffi.Pointer<ffi.Void>,
  ffi.Pointer<ffi.NativeFunction<CBAsyncActivateProc>>,
);

typedef CBGetBlocks = CBStrings Function();

typedef CBBlockConstructor = ffi.Pointer<CBlock> Function();

typedef CBRegisterBlock = ffi.Void Function(
  ffi.Pointer<ffi.Int8>,
  ffi.Pointer<ffi.NativeFunction<CBBlockConstructor>>,
);

typedef CBRegisterObjectType = ffi.Void Function(
  ffi.Int32,
  ffi.Int32,
  CBObjectInfo,
);

typedef CBRegisterEnumType = ffi.Void Function(
  ffi.Int32,
  ffi.Int32,
  CBEnumInfo,
);

typedef CBCallback = ffi.Void Function();

typedef CBRegisterRunLoopCallback = ffi.Void Function(
  ffi.Pointer<ffi.Int8>,
  ffi.Pointer<ffi.NativeFunction<CBCallback>>,
);

typedef CBUnregisterRunLoopCallback = ffi.Void Function(
  ffi.Pointer<ffi.Int8>,
);

typedef CBRegisterExitCallback = ffi.Void Function(
  ffi.Pointer<ffi.Int8>,
  ffi.Pointer<ffi.NativeFunction<CBCallback>>,
);

typedef CBUnregisterExitCallback = ffi.Void Function(
  ffi.Pointer<ffi.Int8>,
);

typedef CBReferenceVariable = ffi.Pointer<CBVar> Function(
  ffi.Pointer<CBContext>,
  ffi.Pointer<ffi.Int8>,
);

typedef CBReferenceChainVariable = ffi.Pointer<CBVar> Function(
  ffi.Pointer<CBChainRefOpaque>,
  ffi.Pointer<ffi.Int8>,
);

typedef CBReleaseVariable = ffi.Void Function(
  ffi.Pointer<CBVar>,
);

typedef CBSuspend = ffi.Int32 Function(
  ffi.Pointer<CBContext>,
  ffi.Double,
);

typedef CBGetState = ffi.Int32 Function(
  ffi.Pointer<CBContext>,
);

typedef CBAbortChain = ffi.Void Function(
  ffi.Pointer<CBContext>,
  ffi.Pointer<ffi.Int8>,
);

typedef CBCloneVar = ffi.Void Function(
  ffi.Pointer<CBVar>,
  ffi.Pointer<CBVar>,
);

typedef CBDestroyVar = ffi.Void Function(
  ffi.Pointer<CBVar>,
);

typedef CBReadCachedString = CBOptionalString Function(
  ffi.Uint32,
);

typedef CBWriteCachedString = CBOptionalString Function(
  ffi.Uint32,
  ffi.Pointer<ffi.Int8>,
);

typedef CBSeqFree = ffi.Void Function(
  ffi.Pointer<CBSeq>,
);

typedef CBSeqPush = ffi.Void Function(
  ffi.Pointer<CBSeq>,
  ffi.Pointer<CBVar>,
);

typedef CBSeqInsert = ffi.Void Function(
  ffi.Pointer<CBSeq>,
  ffi.Uint32,
  ffi.Pointer<CBVar>,
);

typedef CBSeqPop = CBVar Function(
  ffi.Pointer<CBSeq>,
);

typedef CBSeqResize = ffi.Void Function(
  ffi.Pointer<CBSeq>,
  ffi.Uint32,
);

typedef CBSeqFastDelete = ffi.Void Function(
  ffi.Pointer<CBSeq>,
  ffi.Uint32,
);

typedef CBSeqSlowDelete = ffi.Void Function(
  ffi.Pointer<CBSeq>,
  ffi.Uint32,
);

typedef CBTypesInfoFree = ffi.Void Function(
  ffi.Pointer<CBTypesInfo>,
);

typedef CBTypesInfoPush = ffi.Void Function(
  ffi.Pointer<CBTypesInfo>,
  ffi.Pointer<CBTypeInfo>,
);

typedef CBTypesInfoInsert = ffi.Void Function(
  ffi.Pointer<CBTypesInfo>,
  ffi.Uint32,
  ffi.Pointer<CBTypeInfo>,
);

typedef CBTypesInfoPop = CBTypeInfo Function(
  ffi.Pointer<CBTypesInfo>,
);

typedef CBTypesInfoResize = ffi.Void Function(
  ffi.Pointer<CBTypesInfo>,
  ffi.Uint32,
);

typedef CBTypesInfoFastDelete = ffi.Void Function(
  ffi.Pointer<CBTypesInfo>,
  ffi.Uint32,
);

typedef CBTypesInfoSlowDelete = ffi.Void Function(
  ffi.Pointer<CBTypesInfo>,
  ffi.Uint32,
);

typedef CBParametersInfoFree = ffi.Void Function(
  ffi.Pointer<CBParametersInfo>,
);

typedef CBParametersInfoPush = ffi.Void Function(
  ffi.Pointer<CBParametersInfo>,
  ffi.Pointer<CBParameterInfo>,
);

typedef CBParametersInfoInsert = ffi.Void Function(
  ffi.Pointer<CBParametersInfo>,
  ffi.Uint32,
  ffi.Pointer<CBParameterInfo>,
);

typedef CBParametersInfoPop = CBParameterInfo Function(
  ffi.Pointer<CBParametersInfo>,
);

typedef CBParametersInfoResize = ffi.Void Function(
  ffi.Pointer<CBParametersInfo>,
  ffi.Uint32,
);

typedef CBParametersInfoFastDelete = ffi.Void Function(
  ffi.Pointer<CBParametersInfo>,
  ffi.Uint32,
);

typedef CBParametersInfoSlowDelete = ffi.Void Function(
  ffi.Pointer<CBParametersInfo>,
  ffi.Uint32,
);

typedef CBlocksFree = ffi.Void Function(
  ffi.Pointer<CBlocks>,
);

typedef CBlocksPush = ffi.Void Function(
  ffi.Pointer<CBlocks>,
  ffi.Pointer<ffi.Pointer<CBlock>>,
);

typedef CBlocksInsert = ffi.Void Function(
  ffi.Pointer<CBlocks>,
  ffi.Uint32,
  ffi.Pointer<ffi.Pointer<CBlock>>,
);

typedef CBlocksPop = ffi.Pointer<CBlock> Function(
  ffi.Pointer<CBlocks>,
);

typedef CBlocksResize = ffi.Void Function(
  ffi.Pointer<CBlocks>,
  ffi.Uint32,
);

typedef CBlocksFastDelete = ffi.Void Function(
  ffi.Pointer<CBlocks>,
  ffi.Uint32,
);

typedef CBlocksSlowDelete = ffi.Void Function(
  ffi.Pointer<CBlocks>,
  ffi.Uint32,
);

typedef CBExposedTypesInfoFree = ffi.Void Function(
  ffi.Pointer<CBExposedTypesInfo>,
);

typedef CBExposedTypesInfoPush = ffi.Void Function(
  ffi.Pointer<CBExposedTypesInfo>,
  ffi.Pointer<CBExposedTypeInfo>,
);

typedef CBExposedTypesInfoInsert = ffi.Void Function(
  ffi.Pointer<CBExposedTypesInfo>,
  ffi.Uint32,
  ffi.Pointer<CBExposedTypeInfo>,
);

typedef CBExposedTypesInfoPop = CBExposedTypeInfo Function(
  ffi.Pointer<CBExposedTypesInfo>,
);

typedef CBExposedTypesInfoResize = ffi.Void Function(
  ffi.Pointer<CBExposedTypesInfo>,
  ffi.Uint32,
);

typedef CBExposedTypesInfoFastDelete = ffi.Void Function(
  ffi.Pointer<CBExposedTypesInfo>,
  ffi.Uint32,
);

typedef CBExposedTypesInfoSlowDelete = ffi.Void Function(
  ffi.Pointer<CBExposedTypesInfo>,
  ffi.Uint32,
);

typedef CBStringsFree = ffi.Void Function(
  ffi.Pointer<CBStrings>,
);

typedef CBStringsPush = ffi.Void Function(
  ffi.Pointer<CBStrings>,
  ffi.Pointer<ffi.Pointer<ffi.Int8>>,
);

typedef CBStringsInsert = ffi.Void Function(
  ffi.Pointer<CBStrings>,
  ffi.Uint32,
  ffi.Pointer<ffi.Pointer<ffi.Int8>>,
);

typedef CBStringsPop = ffi.Pointer<ffi.Int8> Function(
  ffi.Pointer<CBStrings>,
);

typedef CBStringsResize = ffi.Void Function(
  ffi.Pointer<CBStrings>,
  ffi.Uint32,
);

typedef CBStringsFastDelete = ffi.Void Function(
  ffi.Pointer<CBStrings>,
  ffi.Uint32,
);

typedef CBStringsSlowDelete = ffi.Void Function(
  ffi.Pointer<CBStrings>,
  ffi.Uint32,
);
