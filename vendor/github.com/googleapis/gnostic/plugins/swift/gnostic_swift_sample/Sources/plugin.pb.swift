/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: plugin.proto
 *
 */

//  Copyright 2016 Google Inc. All Rights Reserved.
// 
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
// 
//     http://www.apache.org/licenses/LICENSE-2.0
// 
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//  openapic (aka the OpenAPI Compiler) can be extended via plugins.  
//  A plugin is just a program that reads a Request from stdin 
//  and writes a Response to stdout.
// 
//  A plugin executable needs only to be placed somewhere in the path.  The
//  plugin should be named "openapi_$NAME", and will then be used when the
//  flag "--${NAME}_out" is passed to openapic.

import Foundation
import SwiftProtobuf


///   The version number of OpenAPI compiler.
public struct Openapi_Plugin_V1_Version: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Openapi_Plugin_V1_Version"}
  public var protoMessageName: String {return "Version"}
  public var protoPackageName: String {return "openapi.plugin.v1"}
  public var jsonFieldNames: [String: Int] {return [
    "major": 1,
    "minor": 2,
    "patch": 3,
    "suffix": 4,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "major": 1,
    "minor": 2,
    "patch": 3,
    "suffix": 4,
  ]}

  public var major: Int32 = 0

  public var minor: Int32 = 0

  public var patch: Int32 = 0

  ///   A suffix for alpha, beta or rc release, e.g., "alpha-1", "rc2". It should
  ///   be empty for mainline stable releases.
  public var suffix: String = ""

  public init() {}

  public init(major: Int32? = nil,
    minor: Int32? = nil,
    patch: Int32? = nil,
    suffix: String? = nil)
  {
    if let v = major {
      self.major = v
    }
    if let v = minor {
      self.minor = v
    }
    if let v = patch {
      self.patch = v
    }
    if let v = suffix {
      self.suffix = v
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &major)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &minor)
    case 3: handled = try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &patch)
    case 4: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &suffix)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if major != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: major, protoFieldNumber: 1, protoFieldName: "major", jsonFieldName: "major", swiftFieldName: "major")
    }
    if minor != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: minor, protoFieldNumber: 2, protoFieldName: "minor", jsonFieldName: "minor", swiftFieldName: "minor")
    }
    if patch != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: patch, protoFieldNumber: 3, protoFieldName: "patch", jsonFieldName: "patch", swiftFieldName: "patch")
    }
    if suffix != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: suffix, protoFieldNumber: 4, protoFieldName: "suffix", jsonFieldName: "suffix", swiftFieldName: "suffix")
    }
  }

  public func _protoc_generated_isEqualTo(other: Openapi_Plugin_V1_Version) -> Bool {
    if major != other.major {return false}
    if minor != other.minor {return false}
    if patch != other.patch {return false}
    if suffix != other.suffix {return false}
    return true
  }
}

///   A parameter passed to the plugin from (or through) the OpenAPI compiler.
public struct Openapi_Plugin_V1_Parameter: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Openapi_Plugin_V1_Parameter"}
  public var protoMessageName: String {return "Parameter"}
  public var protoPackageName: String {return "openapi.plugin.v1"}
  public var jsonFieldNames: [String: Int] {return [
    "name": 1,
    "value": 2,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "name": 1,
    "value": 2,
  ]}

  ///   The name of the parameter as specified in the option string
  public var name: String = ""

  ///   The parameter value as specified in the option string
  public var value: String = ""

  public init() {}

  public init(name: String? = nil,
    value: String? = nil)
  {
    if let v = name {
      self.name = v
    }
    if let v = value {
      self.value = v
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &name)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &value)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if name != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: name, protoFieldNumber: 1, protoFieldName: "name", jsonFieldName: "name", swiftFieldName: "name")
    }
    if value != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: value, protoFieldNumber: 2, protoFieldName: "value", jsonFieldName: "value", swiftFieldName: "value")
    }
  }

  public func _protoc_generated_isEqualTo(other: Openapi_Plugin_V1_Parameter) -> Bool {
    if name != other.name {return false}
    if value != other.value {return false}
    return true
  }
}

///   An encoded Request is written to the plugin's stdin.
public struct Openapi_Plugin_V1_Request: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Openapi_Plugin_V1_Request"}
  public var protoMessageName: String {return "Request"}
  public var protoPackageName: String {return "openapi.plugin.v1"}
  public var jsonFieldNames: [String: Int] {return [
    "wrapper": 1,
    "outputPath": 2,
    "parameters": 3,
    "compilerVersion": 4,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "wrapper": 1,
    "output_path": 2,
    "parameters": 3,
    "compiler_version": 4,
  ]}

  private class _StorageClass {
    typealias ProtobufExtendedMessage = Openapi_Plugin_V1_Request
    var _wrapper: Openapi_Plugin_V1_Wrapper? = nil
    var _outputPath: String = ""
    var _parameters: [Openapi_Plugin_V1_Parameter] = []
    var _compilerVersion: Openapi_Plugin_V1_Version? = nil

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1: handled = try setter.decodeSingularMessageField(fieldType: Openapi_Plugin_V1_Wrapper.self, value: &_wrapper)
      case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &_outputPath)
      case 3: handled = try setter.decodeRepeatedMessageField(fieldType: Openapi_Plugin_V1_Parameter.self, value: &_parameters)
      case 4: handled = try setter.decodeSingularMessageField(fieldType: Openapi_Plugin_V1_Version.self, value: &_compilerVersion)
      default:
        handled = false
      }
      return handled
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      if let v = _wrapper {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 1, protoFieldName: "wrapper", jsonFieldName: "wrapper", swiftFieldName: "wrapper")
      }
      if _outputPath != "" {
        try visitor.visitSingularField(fieldType: ProtobufString.self, value: _outputPath, protoFieldNumber: 2, protoFieldName: "output_path", jsonFieldName: "outputPath", swiftFieldName: "outputPath")
      }
      if !_parameters.isEmpty {
        try visitor.visitRepeatedMessageField(value: _parameters, protoFieldNumber: 3, protoFieldName: "parameters", jsonFieldName: "parameters", swiftFieldName: "parameters")
      }
      if let v = _compilerVersion {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 4, protoFieldName: "compiler_version", jsonFieldName: "compilerVersion", swiftFieldName: "compilerVersion")
      }
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _wrapper != other._wrapper {return false}
      if _outputPath != other._outputPath {return false}
      if _parameters != other._parameters {return false}
      if _compilerVersion != other._compilerVersion {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._wrapper = _wrapper
      clone._outputPath = _outputPath
      clone._parameters = _parameters
      clone._compilerVersion = _compilerVersion
      return clone
    }
  }

  private var _storage = _StorageClass()

  ///   A wrapped OpenAPI document to process.
  public var wrapper: Openapi_Plugin_V1_Wrapper {
    get {return _storage._wrapper ?? Openapi_Plugin_V1_Wrapper()}
    set {_uniqueStorage()._wrapper = newValue}
  }

  ///   Output path specified in the plugin invocation.
  public var outputPath: String {
    get {return _storage._outputPath}
    set {_uniqueStorage()._outputPath = newValue}
  }

  ///   Plugin parameters parsed from the invocation string.
  public var parameters: [Openapi_Plugin_V1_Parameter] {
    get {return _storage._parameters}
    set {_uniqueStorage()._parameters = newValue}
  }

  ///   The version number of openapi compiler.
  public var compilerVersion: Openapi_Plugin_V1_Version {
    get {return _storage._compilerVersion ?? Openapi_Plugin_V1_Version()}
    set {_uniqueStorage()._compilerVersion = newValue}
  }

  public init() {}

  public init(wrapper: Openapi_Plugin_V1_Wrapper? = nil,
    outputPath: String? = nil,
    parameters: [Openapi_Plugin_V1_Parameter] = [],
    compilerVersion: Openapi_Plugin_V1_Version? = nil)
  {
    let storage = _uniqueStorage()
    storage._wrapper = wrapper
    if let v = outputPath {
      storage._outputPath = v
    }
    if !parameters.isEmpty {
      storage._parameters = parameters
    }
    storage._compilerVersion = compilerVersion
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: Openapi_Plugin_V1_Request) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

///   The plugin writes an encoded Response to stdout.
public struct Openapi_Plugin_V1_Response: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Openapi_Plugin_V1_Response"}
  public var protoMessageName: String {return "Response"}
  public var protoPackageName: String {return "openapi.plugin.v1"}
  public var jsonFieldNames: [String: Int] {return [
    "errors": 1,
    "files": 2,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "errors": 1,
    "files": 2,
  ]}

  ///   Error message.  If non-empty, the plugin failed. 
  ///   The plugin process should exit with status code zero 
  ///   even if it reports an error in this way.
  ///  
  ///   This should be used to indicate errors which prevent the plugin from 
  ///   operating as intended.  Errors which indicate a problem in openapic 
  ///   itself -- such as the input Document being unparseable -- should be 
  ///   reported by writing a message to stderr and exiting with a non-zero 
  ///   status code.
  public var errors: [String] = []

  ///   file output, each file will be written by openapic to an appropriate location.
  public var files: [Openapi_Plugin_V1_File] = []

  public init() {}

  public init(errors: [String] = [],
    files: [Openapi_Plugin_V1_File] = [])
  {
    if !errors.isEmpty {
      self.errors = errors
    }
    if !files.isEmpty {
      self.files = files
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeRepeatedField(fieldType: ProtobufString.self, value: &errors)
    case 2: handled = try setter.decodeRepeatedMessageField(fieldType: Openapi_Plugin_V1_File.self, value: &files)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if !errors.isEmpty {
      try visitor.visitRepeatedField(fieldType: ProtobufString.self, value: errors, protoFieldNumber: 1, protoFieldName: "errors", jsonFieldName: "errors", swiftFieldName: "errors")
    }
    if !files.isEmpty {
      try visitor.visitRepeatedMessageField(value: files, protoFieldNumber: 2, protoFieldName: "files", jsonFieldName: "files", swiftFieldName: "files")
    }
  }

  public func _protoc_generated_isEqualTo(other: Openapi_Plugin_V1_Response) -> Bool {
    if errors != other.errors {return false}
    if files != other.files {return false}
    return true
  }
}

///   File describes a file generated by a plugin.
public struct Openapi_Plugin_V1_File: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Openapi_Plugin_V1_File"}
  public var protoMessageName: String {return "File"}
  public var protoPackageName: String {return "openapi.plugin.v1"}
  public var jsonFieldNames: [String: Int] {return [
    "name": 1,
    "data": 2,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "name": 1,
    "data": 2,
  ]}

  ///   name of the file
  public var name: String = ""

  ///   data to be written to the file
  public var data: Data = Data()

  public init() {}

  public init(name: String? = nil,
    data: Data? = nil)
  {
    if let v = name {
      self.name = v
    }
    if let v = data {
      self.data = v
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &name)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufBytes.self, value: &data)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if name != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: name, protoFieldNumber: 1, protoFieldName: "name", jsonFieldName: "name", swiftFieldName: "name")
    }
    if data != Data() {
      try visitor.visitSingularField(fieldType: ProtobufBytes.self, value: data, protoFieldNumber: 2, protoFieldName: "data", jsonFieldName: "data", swiftFieldName: "data")
    }
  }

  public func _protoc_generated_isEqualTo(other: Openapi_Plugin_V1_File) -> Bool {
    if name != other.name {return false}
    if data != other.data {return false}
    return true
  }
}

///   Wrapper wraps an OpenAPI document with its version.
public struct Openapi_Plugin_V1_Wrapper: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Openapi_Plugin_V1_Wrapper"}
  public var protoMessageName: String {return "Wrapper"}
  public var protoPackageName: String {return "openapi.plugin.v1"}
  public var jsonFieldNames: [String: Int] {return [
    "name": 1,
    "version": 2,
    "value": 3,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "name": 1,
    "version": 2,
    "value": 3,
  ]}

  ///   filename or URL of the wrapped document
  public var name: String = ""

  ///   version of the OpenAPI specification that is used by the wrapped document
  public var version: String = ""

  ///   valid serialized protocol buffer of the named OpenAPI specification version
  public var value: Data = Data()

  public init() {}

  public init(name: String? = nil,
    version: String? = nil,
    value: Data? = nil)
  {
    if let v = name {
      self.name = v
    }
    if let v = version {
      self.version = v
    }
    if let v = value {
      self.value = v
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &name)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &version)
    case 3: handled = try setter.decodeSingularField(fieldType: ProtobufBytes.self, value: &value)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if name != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: name, protoFieldNumber: 1, protoFieldName: "name", jsonFieldName: "name", swiftFieldName: "name")
    }
    if version != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: version, protoFieldNumber: 2, protoFieldName: "version", jsonFieldName: "version", swiftFieldName: "version")
    }
    if value != Data() {
      try visitor.visitSingularField(fieldType: ProtobufBytes.self, value: value, protoFieldNumber: 3, protoFieldName: "value", jsonFieldName: "value", swiftFieldName: "value")
    }
  }

  public func _protoc_generated_isEqualTo(other: Openapi_Plugin_V1_Wrapper) -> Bool {
    if name != other.name {return false}
    if version != other.version {return false}
    if value != other.value {return false}
    return true
  }
}