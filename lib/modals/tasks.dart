class Tasks
{
  final String name;
  bool isDone;
  Tasks({required this.name,this.isDone=false});
  void toggleDone()
  {
    isDone=!isDone;
  }

}