import "package:flutter/material.dart";
import "package:task_app/pages/home/widgets/busi_home_top_bar.dart";
import "package:task_app/pages/home/widgets/busi_home_item.dart";
import "package:task_app/api/modules/home/index.dart";

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
} 

class _HomePageState extends State<HomePage> {

  List items = [];
  var params = {
    'page': 1,
    'page_size': 10
  };

  String banner = '';

  @override
  void initState() {
    super.initState();
    // 请求数据
    this._loadData();
  }

  _loadData() async {
    var list = await getShopList(params);
    print(list['data']);
    list = list['data']['lists'];
    if (list.length > 0) {
      this.items = list;
      print(this.items);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          setState(() {
            
          });
        },
        child: Container(
          color: Color(0xfff3f4f5),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                backgroundColor: Color.fromARGB(255,107,128,251),
                expandedHeight: 220.0,
                title: Text(
                  '柯明教育',
                  style: TextStyle(
                    color: Color.fromARGB(255,255,255,255),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  )
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: BusiHomeTopBar(),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 20.0
                ),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate((content, index) {
                    return BusiHomeItem(items);
                  }, childCount: items.length),
                )
              )
            ],
          ),
        )
      )
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate { 
  final double minHeight; 
  final double maxHeight; 
  final Widget child;

  _SliverAppBarDelegate({ 
    @required this.minHeight, 
    @required this.maxHeight, 
    @required this.child 
  });  
  
  @override double get minExtent => minHeight; 
  @override double get maxExtent => maxHeight; 
  @override Widget build( BuildContext context, double shrinkOffset, bool overlapsContent) { 
    return new SizedBox.expand(child: child); 
  } 
  @override bool shouldRebuild(_SliverAppBarDelegate oldDelegate) { 
    return maxHeight != oldDelegate.maxHeight || minHeight != oldDelegate.minHeight || child != oldDelegate.child; 
  } 
}
