import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_kanban/services/router/router.dart';
import 'package:simple_kanban/state/todo_bloc.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TodoBloc>(
          create: (context) => TodoBloc()..add(TodoEvents.onInitState()),
        ),
      ],
      child: AutoTabsRouter(
        routes: const [TodoRoute(), InProgressRoute(), CompletedRoute()],
        transitionBuilder:
            (context, child, animation) => SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            ),
        builder: (context, child) {
          /**
           * get route context.
           */
          final tabRouter = AutoTabsRouter.of(context);
          final List<String> pageTitle = [
            "Todo's 📋",
            "In Progress 🧑‍💻",
            "Completed 🎉 !!",
          ];
          return Scaffold(
            appBar: AppBar(title: Text(pageTitle[tabRouter.activeIndex])),
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabRouter.activeIndex,
              onTap: (index) {
                /**
                 * handle index changes
                 */
                tabRouter.setActiveIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_box),
                  label: "Todo",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.work),
                  label: "In Progress",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.check),
                  label: "Completed",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
