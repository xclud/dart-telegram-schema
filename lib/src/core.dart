part of '../t.dart';

/// Telegram object class.
abstract class TlObject {
  /// Constructor.
  const TlObject._();

  /// Serialize to MTProto binary.
  void serialize(List<int> buffer);
}

/// Base Constructor class.
abstract class TlConstructor extends TlObject {
  /// Constructor.
  const TlConstructor._() : super._();
}

/// Base Method class.
abstract class TlMethod<ReturnType> extends TlObject {
  /// Constructor.
  const TlMethod._() : super._();
}

/// False value.
///
/// ID: `bc799737`.
class BoolFalse extends TlObject {
  BoolFalse._() : super._();

  /// Factory.
  factory BoolFalse() => _instance;

  /// Deserialize.
  factory BoolFalse.deserialize(BinaryReader reader) {
    return _instance;
  }

  static final _instance = BoolFalse._();

  @override
  void serialize(List<int> buffer) {
    buffer.writeInt32(0xbc799737);
  }
}

/// True value.
///
/// ID: `997275b5`.
class BoolTrue extends TlObject {
  BoolTrue._() : super._();

  /// Factory.
  factory BoolTrue() => _instance;

  /// Deserialize.
  factory BoolTrue.deserialize(BinaryReader reader) {
    return _instance;
  }

  static final _instance = BoolTrue._();

  @override
  void serialize(List<int> buffer) {
    buffer.writeInt32(0x997275b5);
  }
}

/// True value.
///
/// ID: `3fedd339`.
class True extends TlObject {
  True._() : super._();

  /// Factory.
  factory True() => _instance;

  /// Deserialize.
  factory True.deserialize(BinaryReader reader) {
    return _instance;
  }

  static final _instance = True._();

  @override
  void serialize(List<int> buffer) {
    buffer.writeInt32(0x3fedd339);
  }
}

/// Null value.
///
/// ID: `56730bcc`.
class Null extends TlObject {
  Null._() : super._();

  /// Factory.
  factory Null() => _instance;

  /// Deserialize.
  factory Null.deserialize(BinaryReader reader) {
    return _instance;
  }

  static final _instance = Null._();

  @override
  void serialize(List<int> buffer) {
    buffer.writeInt32(0x56730bcc);
  }
}

/// 128 bit Integer.
class Int128 {
  /// Constructor.
  Int128(this.data);

  /// Buffer.
  final Uint8List data;
}

/// 256 bit Integer.
class Int256 {
  /// Constructor.
  Int256(this.data);

  /// Buffer.
  final Uint8List data;
}
