import '../lib/dtclient.dart';

void main() async{
  final client= Dtclient();

  client.grpcClient();
  
  print('Fetching Counter...');
  int response=await client.getCounter();
  print('Counter : $response');

  print('Incrementing Counter...');
  int incResponse=await client.incrementCounter();
  print('Counter after increment: $incResponse');

  await client.shutdown();
}
