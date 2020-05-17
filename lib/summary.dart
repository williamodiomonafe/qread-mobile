import 'package:flutter/material.dart';
import './book.dart';


class Summary extends StatelessWidget {
	final Book bookDet;
	
	Summary({Key key, @required this.bookDet}) : super(key: key);
	
	@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
	    appBar: AppBar(
		    title: Text("Book Summary")
	    ),
	    body: Container(
		    height: 800.0,
		    child: ListView(
			    children: <Widget>[
			    	Container(
					    margin:  EdgeInsets.all(20.0),
				      child: Text(
						      'Title: ${bookDet.title}',
					        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
				      ),
				    ),
			    	Container(
					      margin: EdgeInsets.all(20.0),
					      child: Text(
						      '${bookDet.summary}',
					        style: TextStyle(fontSize: 16.0),
					      ),
				    ),
			    ],
		    ),
	    )
    );
  }
}