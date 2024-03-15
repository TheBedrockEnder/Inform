"Video Game Menace" by Martin Brown

release along with interpreter.
use scoring.
The maximum score is 50.

The Rocket base is a room. "The Rocket base is a big, circular room. There is a launch pad in the centre of the room. It looks like a rocket was once here but someone has taken it apart and hidden the pieces. There are exits to the North, South and West."
A supporter called launch pad is here. The description is "A launch pad for a rocket."

The control room is north of the Rocket base. 
The control room is a room. The Big Television is here. The description is "A big television showing a satellite trace along with many complex numbers." Understand "TV" as the big television.

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
		say "Under the rug you find a rocket body, which you retrieve."
		
Instead of taking the rug:
	say "the rug is taped to the ground except a little hole that your hand can fit through"

The store cupbard is west of the Rocket base. "A small room used for storing things. There is a shelf against one wall."
A supporter called a shelf is here.
A nose cone is on the shelf. "A nose cone of a rocket."

After putting the nose cone on the launch pad for the first time:
	increase the score by 10;
	say "yes, that looks right!";
	continue the action.

After putting the rocket body on the launch pad for the first time:
	increase the score by 10;
	say "yes, that looks right!";
	continue the action.
		
After putting the nose cone on the launch pad:
	if the rocket body is on the launch pad:
		end the story saying "you click the rocket pieces together and use it to escape! But mabye you should have remebered the extra fuel..."
		
After putting the rocket body on the launch pad:
	if the nose cone is on the launch pad:
		end the story saying "you click rocket pices together and escape! But mabye you should have remebered the extra fuel..."
		
	
