import 'generated/counter.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class Dtclient{
  ClientChannel? channel;
  CounterServiceClient? stub;

  grpcClient(){
    channel=ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure())  
    );
    stub=CounterServiceClient(channel!);
  }

  Future<int> getCounter() async{
    try{
      if (stub == null) grpcClient();
      final response= await stub!.getCounter(Empty());
      return response.counter;
    }catch (e){
      print('Error getting counter: $e');
      return 0;
    }
  }

  Future<int> incrementCounter() async{
    try{
      if(stub==null) grpcClient();
      final response=await stub!.incrementCounter(Empty());
      return response.counter;
    }catch (e){
      print('Error incrementing counter: $e');
      return 0;
    }
  }

  Future<void> shutdown() async{
    await channel?.shutdown();
  }
}