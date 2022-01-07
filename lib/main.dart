import 'package:counter_app/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(CounterApp());
}
class CounterApp extends StatelessWidget {
  const CounterApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx)=>counterprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),      
      ),
    );
  }
}
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  @override
  Widget build(BuildContext context) {
   
  @override
      final provider= Provider.of<counterprovider>(context,listen: false);
    return SafeArea(
      child: Scaffold(appBar: AppBar(
        title: Text('This counter provider App',style: TextStyle(fontSize: 25),),
        leading:Icon(Icons.menu),
        centerTitle: true,
      ),
        body: Center(
          child: Consumer<counterprovider>(builder: 
          (ctx,Provider,_,){return Text('${Provider.getCounter()}',style: TextStyle(fontSize: 120,),);

          },),
        ),
        floatingActionButton: FloatingActionButton(onPressed: provider.incrementCounter,
        child: Text("+"),),
        
      ),
    );
  }
}