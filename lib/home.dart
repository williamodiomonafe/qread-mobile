import 'package:flutter/material.dart';
import 'package:qread/book.dart';
import 'package:qread/summary.dart';

class Home extends StatefulWidget {
	@override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
	
	List books = [
		(Book(
				'The 7 Habits of Highly Effective People',
				'Stephen Covey',
				"Summary\n The 7 Habits of Highly Effective People is divided into four parts. Part 1 introduces the basic ideas behind author Stephen R. Covey's methods. Parts 2, 3, and 4 provide detailed explanations of the seven habits and how to use them in familial and professional settings.\n\n Part 1: Paradigms and Principles\n Part 1 introduces the concepts of the Character Ethic versus the Personality Ethic. Character Ethic embodies who a person is on the inside, while Personality Ethic places the emphasis on how a person appears on the outside. Covey's habits are rooted in the Character Ethic, which ensures long-term success.\n\n Character and Personality Ethics are paradigms: theories or models. Paradigms are the source of a person's behavior. Covey believes people are most effective and successful in life when they focus on principle-centered paradigms. A principle is an unchangeable, natural law, such as honesty or fairness. Aligning one's behavior with universal principles is more effective than trying to change one's outward behavior. Real change comes from within.\n\n Covey's seven habits follow the Maturity Continuum, the first stage of which is dependence. People are born dependent on others. Habits 1, 2, and 3 establish one's independence. Covey calls these the \"Private Victory.\" Habits 4, 5, and 6, which Covey calls the \"Public Victory,\" build on the first three habits to establish interdependence, or the acceptance that everyone and everything are interconnected. When one succeeds, all succeed. The seventh habit, \"Renewal,\" helps one improve in all areas of life and leads to greater effectiveness at work and at home.\n\n Covey defines effectiveness as the \"balance between production (P) and production capability (PC).\" When these elements are out of whack, relationships sour, goals go unmet, and happiness plummets..\n\n Part 2: Private Victory\n Part 2 outlines Habits 1, 2, and 3. These habits build personal independence.\n\n Habit 1: \"Be Proactive\" emphasizes the uniquely human ability to change a person's \"social maps,\" or how a person thinks about the world. Humans choose how they react to others and to situations. Proactive people choose to take responsibility for their own lives and thus their own happiness. Everyone has a Circle of Concern, or things they care about. Proactive people worry only about things that fall within their Circle of Influence; a smaller area within their Circle of Concern, the Circle of Influence contains everything a person has the ability to change. The more one works within one's Circle of Influence, the bigger it becomes, which means there are more things they can change.\n\n Habit 2: \"Begin with the End in Mind\" asks readers to imagine how they would like to be remembered at the end of their lives and then think about the steps they can take now to ensure that happens. Covey recommends writing a Personal Mission Statement, which combines one's goals with one's values. Values, which are subjective, are different from principles, which are objective. Many people focus their lives on what they value most, be it a spouse, family, work, wealth, church, etc. Covey believes it is better to focus on principles; this kind of focus then allows equal division of attention among values.\n\n Habit 3: \"Put First Things First\" is about self-management. There are many time management strategies out there, and Covey is an advocate of fourth-generation time management. All tasks can be assigned to one of four quadrants of a chart: Important and Urgent (Quadrant I), Important but Not Urgent (Quadrant II), Urgent but Not Important (Quadrant III), and Not Urgent and Not Important (Quadrant IV). Fourth-generation time management focuses mostly on Quadrant II. Effective managers deal with urgent and important matters only when they fall within their Circle of Influence and delegate tasks of lower importance to other team members. By staying on top of important issues and planning ahead, people can reduce the number of urgent crises. Fewer crises lead to a more balanced life.\n\n Part 3: Public Victory\n Part 3 covers Habits 4, 5, and 6, which are key to interdependence. These three habits are about caring for and about other people, and Covey emphasizes the importance of building strong relationships to guarantee future success. Using the metaphor of an Emotional Bank Account, he explains how positive and negative interactions affect relationships.\n\n Habit 4: \"Think Win/Win\" is an extension of the Abundance Mentality, meaning there are enough resources for everyone to be successful. Wanting everyone, not just oneself, to succeed is a crucial part of successful negotiation. Conveying one's honest intentions builds trust, which builds stronger relationships. In the end both parties are able to come to a mutually beneficial agreement. If they can't, they decide to forgo the deal altogether and thereby preserve their positive relationship.\n\n Habit 5: \"Seek First to Understand, Then to be Understood\" is the habit of good communication. The first step is to be an empathic listener. Empathic listeners try to understand what the other person is saying without casting their own biases, expectations, or experiences onto the speaker. Good communication is also about honesty, often requiring the speakers to display their own vulnerabilities, even though such revelations can be uncomfortable. Trust occurs only when one party is completely honest with the other party. Vulnerability and integrity are crucial parts of building lasting, positive relationships.\n\n Habit 6: \"Synergy\" further explains the outcome of win/win situations. Synergy occurs when two or more parties work together to create something greater than they could create on their own. In short the sum of their efforts is greater than its parts. Trust and cooperation are immensely important for a synergistic outcome\n\n Part 4: Renewal\n The first half of Part 4 is dedicated to Habit 7, \"Sharpen the Saw.\" Covey elaborates on the importance of taking care of one's physical, mental, emotional, and spiritual self to increase one's competence in each of the other six habits. He believes regular exercise, prayer, enjoyment of \"quality\" literature, and the formation of close relationships are key for the continued practice of the other six habits. Renewal is an integral part of maintaining the personal security and confidence in one's principles that is necessary to practice habits of effectiveness. As one's sense of self increases, so does one's understanding of each habit. This process forms an \"upward spiral\" wherein one gains a greater understanding of the habits as time goes on. The second half of Part 4 reiterates the need for taking an inside-out approach to self-improvement. Covey reviews the basic ideas of Part 1, most notably humankind's ability to alter or even destroy old scripts, or patterns of behavior. He finishes the main part of the text by explaining how his version of the \"correct principles\" of life is rooted in religion."
	))
	];
	

	Widget build(BuildContext context) {
    return Scaffold(
	    appBar: AppBar(
		    title: Text('Qread (QuickRead) - Book List',
		    style: TextStyle(fontSize: 16.0),
		    ),
	    ),
	    body: Container(
		    padding: EdgeInsets.all(10.0),
		    child: Column(
			    children: <Widget>[
			    	Expanded(
			    	  child: ListView.builder(
						    itemCount: books.length,
                itemBuilder: (BuildContext context, index) {
	                return Card(
			                color: Colors.lightBlueAccent.shade100,
			                child: ListTile(
				                onTap: () {
					                Navigator.push(
							                context,
							                MaterialPageRoute(
								                builder: (context) =>
										                Summary(bookDet: books[index]),
							                )
					                );
				                },
				                trailing: Icon(
					                Icons.arrow_forward_ios,
					                size: 40.0,
					                color: Colors.black12,
				                ),
				                title: Text(books[index].title),
				                subtitle: Text(books[index].author),
			                )
	                );
                }
				      )
			      ),
			    ],
		    )
	    ),
    );
  }
}