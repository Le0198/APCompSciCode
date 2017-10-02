ArrayList<Action> actors = new ArrayList<Action>();


actors.add(new Knight(this, "Rob"));
actors.add(new Dragon(this, "Pete"));

for(Action a : actors) {
  a.speak();
  a.move();
  a.fight();
}