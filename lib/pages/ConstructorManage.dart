import 'package:flutter/material.dart';

class ConstructorManage extends StatelessWidget {
  const ConstructorManage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          TextField(),
          SizedBox.fromSize(
            size: Size.fromHeight(8),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    width: 256,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            label: Text('新增构造器'),
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              ListTile(
                                leading: Icon(Icons.build_circle),
                                // name、alias、description
                                title: Text('property'),
                                subtitle: Text('属性'),
                                onTap: () {},
                              ),
                              ListTile(
                                leading: Icon(Icons.build_circle),
                                title: Text('range_property'),
                                subtitle: Text('范围属性'),
                              ),
                              ListTile(
                                leading: Icon(Icons.build_circle),
                                title: Text('property_change'),
                                subtitle: Text('属性改变'),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                SizedBox.fromSize(
                  size: Size.fromWidth(8),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                            child: Form(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(padding: EdgeInsets.only(bottom: 8), child: Text.rich(TextSpan(children: [
                                    WidgetSpan(child: Icon(Icons.edit)),
                                    TextSpan(
                                        text: '基本信息',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ])),),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                                floatingLabelBehavior:
                                                FloatingLabelBehavior.always,
                                                labelText: '名称'),
                                          )),
                                      SizedBox.fromSize(
                                        size: Size(8, 1),
                                      ),
                                      Expanded(
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                                floatingLabelBehavior:
                                                FloatingLabelBehavior.always,
                                                labelText: '备注'),
                                          ))
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 24),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          labelText: '描述',
                                          hintText: 'emm',
                                          floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                          border: OutlineInputBorder()),
                                      maxLines: 5,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: FloatingActionButton.extended(
                          onPressed: () {},
                          label: Text('新增构造器'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}