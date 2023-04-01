import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class ChatInterface extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChatInterfaceState();
}

class ChatInterfaceState extends State<ChatInterface> {
  List<Message> messages = [
    Message(
      text: 'Hi Doctor, Im sick.',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false,
    )
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/hospitalbackground.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: GroupedListView<Message, DateTime>(
                reverse: true,
                padding: const EdgeInsets.all(8),
                order: GroupedListOrder.DESC,
                useStickyGroupSeparators: true,
                floatingHeader: true,
                elements: messages,
                groupBy: (messages) => DateTime(
                  messages.date.year,
                  messages.date.month,
                  messages.date.day,
                ),
                groupHeaderBuilder: (Message message) => SizedBox(
                  height: 40,
                  child: Center(
                    child: Card(
                      color: Colors.grey[300],
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          DateFormat.yMMMd().format(message.date),
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: "K2D",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                itemBuilder: (context, Message message) => Align(
                  alignment: message.isSentByMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    width: 170.0,
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.grey[600],
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          message.text,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "K2D",
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
                height: 200.0,
                color: Colors.grey.shade300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            final message = Message(
                              text: "What's bothering you?",
                              date: DateTime.now(),
                              isSentByMe: true,
                            );
                            setState(() => messages.add(message));
                          },
                          child: Text(
                            "What's bothering you?",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(150,70),
                            backgroundColor: Colors.deepPurple[100],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            final message = Message(
                              text: "Hi",
                              date: DateTime.now(),
                              isSentByMe: true,
                            );
                            setState(() => messages.add(message));
                          },
                          child: Text(
                            "What's wrong?",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(150, 70),
                            backgroundColor: Colors.deepPurple[100],
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            final message = Message(
                              text: "Hello, can you elaborate more on your condition?",
                              date: DateTime.now(),
                              isSentByMe: true,
                            );
                            final message1 = Message(
                              text: "I'm always feeling cold even though its summer right now",
                              date: DateTime.now(),
                              isSentByMe: false,
                            );
                            final message2=Message(
                              text: "Do you constantly feel fatigue and have weakness of limbs?",
                              date: DateTime.now(),
                              isSentByMe: true,
                            );
                            final message3=Message(
                                text: "Yes,, I do feel weaker compared to normal days",
                                date: DateTime.now(),
                                isSentByMe: false
                            );
                            final message4=Message(
                                text: "You are having high body temperature beyond normal range.Based on your conditions, you are experiencing fever.",
                                date: DateTime.now(),
                                isSentByMe: true
                            );
                            final message5=Message(
                              text: "I will be prescribing you pills of paracetamol, to be taken 3 times a day, for a duration for 3 days.",
                              date: DateTime.now(),
                              isSentByMe: true
                            );
                            final message6 =Message(
                                text: "Alright, thanks doctor",
                                date: DateTime.now(),
                                isSentByMe: false
                            );
                            setState(() {
                              messages.add(message);
                              messages.add(message1);
                              messages.add(message2);
                              messages.add(message3);
                              messages.add(message4);
                              messages.add(message5);
                              messages.add(message6);

                            });
                          },
                          child: Text(
                            "Hello, can you elaborate more on your condition?",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(150, 70),
                            backgroundColor: Colors.deepPurple[100],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            final message = Message(
                              text: "Let me have a look",
                              date: DateTime.now(),
                              isSentByMe: true,
                            );
                            setState(() {
                              messages.add(message);
                            });
                          },
                          child: Text(
                            "Let me have a look",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(150, 70),
                            backgroundColor: Colors.deepPurple[100],
                          ),
                        ),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  const Message({
    required this.text,
    required this.date,
    required this.isSentByMe,
  });
}
