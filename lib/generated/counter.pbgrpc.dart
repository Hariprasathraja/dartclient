//
//  Generated code. Do not modify.
//  source: counter.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'counter.pb.dart' as $0;

export 'counter.pb.dart';

@$pb.GrpcServiceName('CounterService')
class CounterServiceClient extends $grpc.Client {
  static final _$incrementCounter = $grpc.ClientMethod<$0.Empty, $0.CounterResponse>(
      '/CounterService/IncrementCounter',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CounterResponse.fromBuffer(value));
  static final _$getCounter = $grpc.ClientMethod<$0.Empty, $0.CounterResponse>(
      '/CounterService/GetCounter',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CounterResponse.fromBuffer(value));

  CounterServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CounterResponse> incrementCounter($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$incrementCounter, request, options: options);
  }

  $grpc.ResponseFuture<$0.CounterResponse> getCounter($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCounter, request, options: options);
  }
}

@$pb.GrpcServiceName('CounterService')
abstract class CounterServiceBase extends $grpc.Service {
  $core.String get $name => 'CounterService';

  CounterServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.CounterResponse>(
        'IncrementCounter',
        incrementCounter_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.CounterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.CounterResponse>(
        'GetCounter',
        getCounter_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.CounterResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CounterResponse> incrementCounter_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return incrementCounter(call, await request);
  }

  $async.Future<$0.CounterResponse> getCounter_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getCounter(call, await request);
  }

  $async.Future<$0.CounterResponse> incrementCounter($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.CounterResponse> getCounter($grpc.ServiceCall call, $0.Empty request);
}
