import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_app/model/specialize_model.dart';

class SpecializationWidget extends StatelessWidget {
  const SpecializationWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SpecialLizationModel> specializeList = [
      SpecialLizationModel(
          text: 'UI Designer', iconData: Icons.design_services_outlined),
      SpecialLizationModel(text: 'Web Developer', iconData: Icons.devices),
      SpecialLizationModel(
          text: 'Mobile Developer', iconData: Icons.developer_mode),
      SpecialLizationModel(
          text: 'Interaction', iconData: FontAwesomeIcons.artstation),
      SpecialLizationModel(
          text: 'Microsoft Specialist', iconData: FontAwesomeIcons.microsoft),
      SpecialLizationModel(
          text: 'Client Management', iconData: FontAwesomeIcons.solidHandshake),
    ];
    return Container(
      child: Expanded(
        child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: specializeList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[700],
                              spreadRadius: 2,
                              offset: Offset.zero,
                              blurRadius: 4)
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(specializeList[index].iconData,
                              color: Colors.white),
                          Text(
                            specializeList[index].text,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    )),
              );
            }),
      ),
    );
  }
}
