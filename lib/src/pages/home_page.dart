import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final _size  = 30.0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: <Widget>[
          _crearAppBar(context),
          
          SliverList(
            delegate: 
            SliverChildListDelegate([
              
            SizedBox(height: 30.0,),            
              
            _crearContacto(),
            _crearContacto(),
            _crearContacto(),
            _crearContacto(),
            _crearContacto(),
            _crearContacto(),
            _crearContacto(),
            _crearContacto(),
            _crearContacto(),
            _crearContacto(),
            _crearContacto(),
            _crearContacto(),
            _crearContacto(),
          ]
          )
        )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon( Icons.add ),
        backgroundColor: Colors.orange,
      ),
    );
  }

  Widget _crearAppBar(BuildContext context){
    return SliverAppBar(
      backgroundColor: Colors.grey[200],
      pinned: true,
      expandedHeight: 300.0,
      collapsedHeight: 60.0,
      floating: false,
      
      flexibleSpace: Container(
        child: FlexibleSpaceBar(
          collapseMode: CollapseMode.parallax,
          background: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 45.0,
                backgroundImage: NetworkImage('https://mocah.org/uploads/posts/202656-optimus-prime-1920x1080.jpg', scale: 100.0),
              ),
              Text("Gamas", style: TextStyle(color: Colors.black ,fontSize: 26.0)),
            ],
          ),
              // )
        ),
      ),
      bottom: PreferredSize(
        child: Container(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: null
                ),
              Text("Contatctos", style: TextStyle(fontSize: 20.0)),
              Expanded(child: SizedBox()),
              IconButton(icon: Icon(Icons.crop_free), onPressed: (){}),
              IconButton(icon: Icon(Icons.search), onPressed: (){}),
              IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
            ],
          ),
        ),
        preferredSize: null
      )
    );
  }

  Widget _crearContacto(){
    return Card(
      
      child: ListTile(
        leading: Icon(Icons.account_box, size: 35.0),
        title: Text("Gamas"),
      ),
    );
  }
}