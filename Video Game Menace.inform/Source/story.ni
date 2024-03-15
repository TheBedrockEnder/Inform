"Video Game Menace" by Martin Brown

Release along with an interpreter.
Use scoring. The maximum score is 50.

The Rocket base is a room. "The Rocket base is a big, circular room. There is a launch pad in the center of the room. It looks like a rocket was once here but someone has taken it apart and hidden the pieces. There are exits to the North, South, and West."

A supporter called the launch pad is here. The description is "A launch pad for a rocket."

The control room is north of the Rocket base. 
The control room is a room. The big television is here. The description is "A big television showing a satellite trace along with many complex numbers." Understand "TV" as the big television.

The bathroom is south of the rocket base. "A bathroom with a white rug."
The rug is here. The description is "a white rug".

The rocket body is a thing. The rocket body can be found. The rocket body is not found.
Instead of looking under the rug:
	if the rocket body is found:
		say "There's nothing else of interest under there.";
	otherwise:
		now the rocket body is found;
		increase the score by 10;
		now the player carries the rocket body;
		say "Under the rug, you find a rocket body, which you retrieve."

Instead of taking the rug:
	say "The rug is taped to the ground except for a little hole that your hand can fit through."

The storage cupboard is west of the Rocket base. "A small room used for storing things. There is a shelf against one wall."
A supporter called a shelf is here.  The shelf can be climbable.
The nose cone is a thing. The nose cone is wearable.
The nose cone is on the shelf. "A nose cone of a rocket."

Easter egg 1 is a thing. Easter egg 1 can be found. Easter egg 1 is not found.
Easter egg 2 is a thing. Easter egg 2 can be found. Easter egg 2 is not found.

After wearing the nose cone for the first time:
	if Easter egg 1 is not found:
		increase the score by 10;
		now Easter egg 1 is found;
		now player carries Easter egg 1;
		say "You found an Easter egg, well done!";
	otherwise if the player is wearing the nose cone:
		say "You are already wearing the nose cone.";
	otherwise:
		now the nose cone is worn by the player;
		say "You put on the nose cone.";
	continue the action.

After putting the nose cone on the launch pad for the first time:
	increase the score by 10;
	say "Yes, that looks right!";
	continue the action.

After putting the rocket body on the launch pad for the first time:
	increase the score by 10;
	say "Yes, that looks right!";
	continue the action.

After putting the nose cone on the launch pad:
	if the rocket body is on the launch pad:
		end the story saying "You click the rocket pieces together and use it to escape! But maybe you should have remembered the extra fuel..."

After putting the rocket body on the launch pad:
	if the nose cone is on the launch pad:
		end the story saying "You click the rocket pieces together and escape! But maybe you should have remembered the extra fuel..."
		
Instead of climbing the shelf:
	if Easter egg 2 is found:
		say "You already looked and there is nothing interesting there.";
	otherwise:
		say "You climb up the shelf and discover Easter egg 2!";
		now Easter egg 2 is found;
		now player carries Easter egg 2;
		increase the score by 10;
		say "You found another Easter egg while climbing the shelf!";