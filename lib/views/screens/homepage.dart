import 'package:ch_10_1/utils/image_utils.dart';
import 'package:ch_10_1/views/screens/despage.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<Map> data = [
    {
      'logo': (imagePath + i1),
      'profile': (imagePath + i11),
      'title': "Tesla",
      'subtitle': "Elon Musk",
      'ceo': "CEO",
      'des': "We’re building a world powered by solar energy, "
          "running on batteries and transported by electric vehicles."
          " Explore the most recent impact of our products, people and supply chain.",
    },
    {
      'logo': (imagePath + i2),
      'profile': (imagePath + i22),
      'title': "Tata Motors",
      'subtitle': "Guenter Butschek",
      'ceo': "CEO",
      'des': "Tata Motors Group (Tata Motors) is a 37 billion \$ organisation. It is a leading global automobile manufacturing company. Its diverse portfolio includes an extensive range of cars, sports utility vehicles, trucks, buses and defence vehicles. Tata Motors is one of India's largest OEMs offering an extensive range of integrated, smart and e-mobility solutions",
    },
    {
      'logo': (imagePath + i3),
      'profile': (imagePath + i33),
      'title': "Apple",
      'subtitle': "Tim Cook",
      'ceo': "CEO",
      'des': "Apple Inc (Apple) designs, manufactures, and markets smartphones, tablets, personal computers (PCs), portable and wearable devices. The company also offers software and related services, accessories, and third-party digital content and applications.",
    },
    {
      'logo': (imagePath + i4),
      'profile': (imagePath + i44),
      'title': "Google",
      'subtitle': "Sundar Pichai",
      'ceo': "CEO",
      'des': "Google is an American multinational technology company focusing "
          "on online advertising, search engine technology, cloud computing,"
          " computer software, quantum computing, e-commerce, artificial "
          "intelligence, and consumer electronics.It has been referred to "
          "as the most powerful company in the world",
    },
    {
      'logo': (imagePath + i5),
      'profile': (imagePath + i55),
      'title': "Wipro",
      'subtitle': "Thierry Delaporte",
      'ceo': "CEO",
      'des':"Wipro Limited (formerly, Western India Palm Refined Oils Limited) is an Indian multinational corporation that provides information technology, consulting and business process services. Thierry Delaporte is serving as CEO and managing director of Wipro since July 2020",
    },
    {
      'logo': (imagePath + i6),
      'profile': (imagePath + i66),
      'title': "Infosys",
      'subtitle': "Salil Parekh",
      'ceo': "CEO",
      'des': "Established in 1981, Infosys is a NYSE listed global consulting and IT services company with more than 346k employees. From a capital of US\$250, we have grown to become a US\$ 17.94 billion (LTM FY23 revenues) company with a market capitalization of approximately US\$ 75.39 billion.",
    },
    {
      'logo': (imagePath + i7),
      'profile': (imagePath + i77),
      'title': "LG",
      'subtitle': "William Cho",
      'ceo': "CEO",
      'des': "LG Electronics Inc. is a South Korean multinational electronics company headquartered in Yeouido-dong, Seoul, South Korea. LG Electronics is a part of LG Corporation, the fourth largest chaebol in South Korea, and often considered as the pinnacle of LG Corp with the group's chemical and battery division LG Chem.",
    },
    {
      'logo': (imagePath + i8),
      'profile': (imagePath + i88),
      'title': "Samsung",
      'subtitle': "Kyung,Kye Hyun",
      'ceo': "CEO",
      'color': Colors.grey,
      'des': "Samsung Group (stylized as SΛMSUNG), is a South Korean multinational manufacturing conglomerate headquartered in Samsung Town, Seoul, South Korea. It comprises numerous affiliated businesses, most of them united under the Samsung brand, and is the largest South Korean chaebol (business conglomerate). As of 2020, Samsung has the eighth highest global brand value",
    },
    {
      'logo': (imagePath + i9),
      'profile': (imagePath + i99),
      'title': "Sony",
      'subtitle': "Sunil Nayyer",
      'ceo': "CEO",
      'des': "Sony Group Corporation also known as Sony Corporation, is a Japanese multinational conglomerate corporation headquartered in Minato, Tokyo, Japan. As a major technology company, it operates as one of the world's largest manufacturers of consumer and professional electronic products.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          "MNC CEOs",
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: data
                .map(
                  (e) => Card(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => desPage(data: e),
                            ),
                          );
                        });
                      },
                      child: Column(
                        children: [
                          ListTile(
                            leading: SizedBox(
                              width: h * 0.1,
                              child: Image.asset(e['logo']),
                            ),
                            trailing: SizedBox(
                              height: h * 0.2,
                              width: h * 0.1,
                              child: Image.asset(e['profile']),
                            ),
                            title: Text(e['title']),
                            subtitle: Text(e['subtitle']),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
