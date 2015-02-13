if(life_earplugs) then {
	1 fadesound 1;
	1 fademusic 0.5;
	life_earplugs = false;
	hint "You took out your earplugs!";
} else {
	1 fadesound 0.1;
	1 fademusic 0.05;
	life_earplugs = true;
	hint "You put in your earplugs!";
};