@Override
widget build(BuildContext context){
return MaterialApp(

debugShowCheckedModeBanner: false,
home : Scaffold(
	body: Center(
	child: Container(
	 child: Icon(Icon.settings, size:80, color: Colors.purple[200])
	),
	),
		body: Column(
			children: [
			 Container(height:300, color: Colors.purple,),
			 Container(height:300, color: Colors.purple[200],),
			 Container(height:300, color: Colors.purple[300],),
			],
		
	),	
	),
	);
}
