import 'package:dartarabic/dartarabic.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Ain Keyboard Tutorial',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
      ),
      // theme: ThemeData(
      //   primarySwatch: Colors.purple,
      // ),
      // theme: ThemeData.light(),
      //darkTheme: ThemeData.dark(),
      home: const MyHomePage(title: 'Ain Arabic Keyboard Tutorial'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _arabictext =
      "Press any of the letter below to show its Arabic letter";
  Color _buttonColor = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/arabic_letter_collage.jpg"),
              fit: BoxFit.cover,
              //opacity: 240,
              colorFilter: ColorFilter.mode(
             Colors.white.withOpacity(0.1),
               BlendMode.dstATop,
              ),
            ),
          ),
          padding: const EdgeInsets.all(12),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height - 570,
                child: Text(
                  _arabictext,
                  style: GoogleFonts.poppins(
                    fontSize: (_arabictext ==
                            "Press any of the letter below to show its Arabic letter")
                        ? 20
                        : 40,
                  ),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_buttonColor == Colors.red)
                      changeShiftEngtoArabic("`");
                    else
                      changeEngtoArabic("`");
                  });
                },
                child: const Text("`"),
              ),
              rowOneKeyboard(),
              rowTwoKeyboard(),
              rowThreeKeyboard(),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _buttonColor = Colors.red;
              });
            },
            backgroundColor: _buttonColor,
            child: const Text('SHIFT'),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _arabictext =
                    "Press any of the letter below to show its Arabic letter";
                _buttonColor = Colors.purple;
              });
            },
            child: const Icon(Icons.restart_alt_outlined),
          ),
        ],
      ),
    );
  }

  rowOneKeyboard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('Q');
                else
                  changeEngtoArabic('Q');
              });
            },
            child: const Text('Q'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('W');
                else
                  changeEngtoArabic('W');
              });
            },
            child: const Text('W'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('E');
                else
                  changeEngtoArabic('E');
              });
            },
            child: const Text('E'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('R');
                else
                  changeEngtoArabic('R');
              });
            },
            child: const Text('R'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('T');
                else
                  changeEngtoArabic('T');
              });
            },
            child: const Text('T'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('Y');
                else
                  changeEngtoArabic('Y');
              });
            },
            child: const Text('Y'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('U');
                else
                  changeEngtoArabic('U');
              });
            },
            child: const Text('U'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('I');
                else
                  changeEngtoArabic('I');
              });
            },
            child: const Text('I'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('O');
                else
                  changeEngtoArabic('O');
              });
            },
            child: const Text('O'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('P');
                else
                  changeEngtoArabic('P');
              });
            },
            child: const Text('P'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('[');
                else
                  changeEngtoArabic('[');
              });
            },
            child: const Text('['),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic(']');
                else
                  changeEngtoArabic(']');
              });
            },
            child: const Text(']'),
          ),
        ],
      ),
    );
  }

  rowTwoKeyboard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('A');
                else
                  changeEngtoArabic('A');
              });
            },
            child: const Text('A'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('S');
                else
                  changeEngtoArabic('S');
              });
            },
            child: const Text('S'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('D');
                else
                  changeEngtoArabic('D');
              });
            },
            child: const Text('D'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('F');
                else
                  changeEngtoArabic('F');
              });
            },
            child: const Text('F'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('G');
                else
                  changeEngtoArabic('G');
              });
            },
            child: const Text('G'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('H');
                else
                  changeEngtoArabic('H');
              });
            },
            child: const Text('H'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('J');
                else
                  changeEngtoArabic('J');
              });
            },
            child: const Text('J'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('K');
                else
                  changeEngtoArabic('K');
              });
            },
            child: const Text('K'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('L');
                else
                  changeEngtoArabic('L');
              });
            },
            child: const Text('L'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic(';');
                else
                  changeEngtoArabic(';');
              });
            },
            child: const Text(';'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic("'");
                else
                  changeEngtoArabic("'");
              });
            },
            child: const Text("'"),
          ),
        ],
      ),
    );
  }

  rowThreeKeyboard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('Z');
                else
                  changeEngtoArabic('Z');
              });
            },
            child: const Text('Z'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('X');
                else
                  changeEngtoArabic('X');
              });
            },
            child: const Text('X'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('C');
                else
                  changeEngtoArabic('C');
              });
            },
            child: const Text('C'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('V');
                else
                  changeEngtoArabic('V');
              });
            },
            child: const Text('V'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('B');
                else
                  changeEngtoArabic('B');
              });
            },
            child: const Text('B'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('N');
                else
                  changeEngtoArabic('N');
              });
            },
            child: const Text('N'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('M');
                else
                  changeEngtoArabic('M');
              });
            },
            child: const Text('M'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic(',');
                else
                  changeEngtoArabic(',');
              });
            },
            child: const Text(','),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('.');
                else
                  changeEngtoArabic('.');
              });
            },
            child: const Text('.'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_buttonColor == Colors.red)
                  changeShiftEngtoArabic('/');
                else
                  changeEngtoArabic('/');
              });
            },
            child: const Text('/'),
          ),
        ],
      ),
    );
  }

  changeEngtoArabic(String letter) {
    switch (letter) {
      case 'Q':
        _arabictext = Arabic.DAD;
        break;
      case 'W':
        _arabictext = Arabic.SAD;
        break;
      case 'E':
        _arabictext = Arabic.THEH;
        break;
      case 'R':
        _arabictext = Arabic.QAF;
        break;
      case 'T':
        _arabictext = Arabic.FEH;
        break;
      case 'Y':
        _arabictext = Arabic.GHAIN;
        break;
      case 'U':
        _arabictext = Arabic.AIN;
        break;
      case 'I':
        _arabictext = Arabic.HEH;
        break;
      case 'O':
        _arabictext = Arabic.KHAH;
        break;
      case 'P':
        _arabictext = Arabic.HAH;
        break;
      case '[':
        _arabictext = Arabic.JEEM;
        break;
      case ']':
        _arabictext = Arabic.DAL;
        break;
      case 'A':
        _arabictext = Arabic.SHEEN;
        break;
      case 'S':
        _arabictext = Arabic.SEEN;
        break;
      case 'D':
        _arabictext = Arabic.YEH;
        break;
      case 'F':
        _arabictext = Arabic.BEH;
        break;
      case 'G':
        _arabictext = Arabic.LAM;
        break;
      case 'H':
        _arabictext = Arabic.ALEF;
        break;
      case 'J':
        _arabictext = Arabic.TEH;
        break;
      case 'K':
        _arabictext = Arabic.NOON;
        break;
      case 'L':
        _arabictext = Arabic.MEEM;
        break;
      case ';':
        _arabictext = Arabic.KAF;
        break;
      case "'":
        _arabictext = Arabic.TAH;
        break;
      case 'Z':
        _arabictext = Arabic.YEH_HAMZA;
        break;
      case 'X':
        _arabictext = Arabic.HAMZA;
        break;
      case 'C':
        _arabictext = Arabic.WAW_HAMZA;
        break;
      case 'V':
        _arabictext = Arabic.REH;
        break;
      case 'B':
        _arabictext = Arabic.LAM_ALEF;
        break;
      case 'N':
        _arabictext = Arabic.ALEF_MAKSURA;
        break;
      case 'M':
        _arabictext = Arabic.TEH_MARBUTA;
        break;
      case ',':
        _arabictext = Arabic.WAW;
        break;
      case '.':
        _arabictext = Arabic.ZAIN;
        break;
      case '/':
        _arabictext = Arabic.ZAH;
        break;
      case "`":
        _arabictext = Arabic.THAL;
        break;
      default:
    }
  }

  changeShiftEngtoArabic(String letter) {
    switch (letter) {
      case 'Q':
        _arabictext = Arabic.Symbols.FATHA;
        break;
      case 'W':
        _arabictext = Arabic.Symbols.FATHATAN;
        break;
      case 'E':
        _arabictext = Arabic.Symbols.DAMMA;
        break;
      case 'R':
        _arabictext = Arabic.Symbols.DAMMATAN;
        break;
      case 'T':
        _arabictext = Arabic.LAM_ALEF_HAMZA_BELOW;
        break;
      case 'Y':
        _arabictext = Arabic.ALEF_HAMZA_BELOW;
        break;
      case 'U':
        _arabictext = Arabic.Symbols.THOUSANDS;
        break;
      case 'I':
        _arabictext = "÷";
        break;
      case 'O':
        _arabictext = '×';
        break;
      case 'P':
        _arabictext = Arabic.Symbols.SEMICOLON;
        break;
      case '[':
        _arabictext = '<';
        break;
      case ']':
        _arabictext = ">";
        break;
      case 'A':
        _arabictext = Arabic.Symbols.KASRA;
        break;
      case 'S':
        _arabictext = Arabic.Symbols.KASRATAN;
        break;
      case 'D':
        _arabictext = ']';
        break;
      case 'F':
        _arabictext = '[';
        break;
      case 'G':
        _arabictext = Arabic.LAM_ALEF_HAMZA_ABOVE;
        break;
      case 'H':
        _arabictext = Arabic.ALEF_HAMZA_ABOVE;
        break;
      case 'J':
        _arabictext = Arabic.Symbols.FULL_STOP;
        break;
      case 'K':
        _arabictext = Arabic.Symbols.COMMA;
        break;
      case 'L':
        _arabictext = '/';
        break;
      case ';':
        _arabictext = ':';
        break;
      case "'":
        _arabictext = '"';
        break;
      case 'Z':
        _arabictext = Arabic.MADDA_ABOVE;
        break;
      case 'X':
        _arabictext = Arabic.HEH;
        break;
      case 'C':
        _arabictext = Arabic.Symbols.PARENTHESIS_LEFT;
        break;
      case 'V':
        _arabictext = Arabic.Symbols.PARENTHESIS_RIGHT;
        break;
      case 'B':
        _arabictext = Arabic.LAM_ALEF_MADDA_ABOVE;
        break;
      case 'N':
        _arabictext = Arabic.ALEF_MADDA;
        break;
      case 'M':
        _arabictext = '’';
        break;
      case ',':
        _arabictext = ',';
        break;
      case '.':
        _arabictext = '.';
        break;
      case '/':
        _arabictext = Arabic.Symbols.QUESTION;
        break;
      case "`":
        _arabictext = Arabic.Symbols.SHADDA;
        break;
      default:
    }
  }
}


