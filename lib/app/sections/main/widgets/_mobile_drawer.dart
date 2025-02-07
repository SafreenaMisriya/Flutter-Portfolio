part of '../main_section.dart';

class _MobileDrawer extends StatelessWidget {
  const _MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    // theme
    var theme = Theme.of(context);
    return Drawer(
      child: Material(
        color: theme.scaffoldBackgroundColor,
        child: Padding(
          padding: EdgeInsets.only(top: 2.h),
          child: Column(
            children: [
              const Center(child: NavBarLogo()),
              const Divider(),
              const Divider(),
              ...NavBarUtils.names.asMap().entries.map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        hoverColor: theme.primaryColor.withAlpha(70),
                        onPressed: () {
                          // scrollProvider.scrollMobile(e.key);
                          scrollProvider.jumpTo(e.key);
                          Navigator.pop(context);
                        },
                        child: ListTile(
                          leading: Icon(
                            NavBarUtils.icons[e.key],
                            // color: theme.primaryColor,
                          ),
                          title: Text(
                            e.value,
                            // style: AppText.l1,
                          ),
                        ),
                      ),
                    ),
                  ),
              Space.y(5.w)!,
              ColorChageButton(
                text: 'RESUME',
                onTap: () {
                  openURL(resume);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
