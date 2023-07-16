"9 zivota" by Andrej

Release along with the "Parchment" interpreter.

When play begins:
	now the right hand status line is "[time oF day]".
The time of day is 9:50 AM.	

When play begins:
	say "U daljini čuješ ženski glas. Toliko je glasan da te probudio. Osjećaš se ukočeno i umorno kao da uopće nisi spavao. Mali prozor iznad kreveta je jedini izvor svijetla u inače potpuno mračnoj sobi. Ne bojiš se mraka, štoviše on ti godi. Odlučiš krenuti prema ženskom glasu."

The display banner rule is listed before the when play begins stage rule in the startup rules.
	
Garaza is a room. "Mjesto gdje provodiš noći odmarajući se. Ispod prozora se nalazi krevet bez jastuka. Jedini izlaz su smeđa vrata na sjeveru."

Kuhinja is a room. "Ovdje uvijek dobijem nešto za pojesti, ali nisam stalno dobrodošao. Prolaz prema sjeveru i zapadu su slobodni. [if we have not taken Konopac]Opasna jama s kolcima blokira put prema istoku.[otherwise]Mislim da se sad mogu zanjihati preko jame. "

Dnevna soba is a room. Dnevna soba is north of Kuhinja. "Velika soba puna svijetla. Put prema sjeverozapadu je otvoren. Velika crvena vrata vode prema sjeveroistoku. Rijetko smijem sam proći kroz ta vrata.[if we have not taken crveni kljuc] Uvijek su zaključana.[otherwise]Sada se vrata mogu otvoriti."

Hodnik is a room. "Hladan i dugačak hodnik koji vodi prema podrumu."

Podrum is a room. Podrum is below Hodnik. "Vlažan i mračnji nego garaža. Ženski glas se ovdje ne čuje."

Blagovaonica is a room. Blagovaonica is west of Kuhinja. "Stara soba sa žutim tapetama koja vodi prema tavanu."

Tavan is a room. Tavan is above Blagovaonica. "Neizdrživa vrućina. Ne mogu ovdje ostati duže od 10 minuta. Vidiš prijatelja u crno-bijelom kaputu kako nešto prodaje."

Smocnica is a room. "Malena soba gdje obično znaš pronaci slatkiše"

Radna soba is a room. Radna soba is northwest of Dnevna soba. "Lijepo uređena soba s tvojom slikom na stolu i imenom na poleđini - Eugen. Put prema sjeveru je slobodan.[if Oklop is not carried] Opasne rotirajuće oštrice blokiraju put prema zapadu.[otherwise] Mislim da me oklop štiti od oštrica."

Kupaona is a room. "Ostao sam bez štita nema natrag. Čini se da sam zapeo ovdje."

Vrt is a room. Vrt is north of Radna soba. "Nakon garaže tvoje omiljeno mjesto za odmor."

Spavaca soba is a room. "Stvorio sam se u spavaćoj sobi i ugledao svoju vlasnicu kako me traži ispod kereveta.[line break]Ženski glas: Mic mic dođi Eugen imam nešto fino za tebe. "

Smeda vrata is a door.
It is north of Garaza and south of Kuhinja.
It is closed.
It is openable.
It is scenery.

[Zamka]
Jama s kolcima is a door.
It is east of Kuhinja and west of Hodnik. 
It is open.
It is not openable.
It is scenery.

Check going through Jama s kolcima:
	say "Ne mogu ovo preskočiti, ali se mogu zanjihati preko s nečim.";
	if Konopac is worn:
		say "Uspio sam! Ovaj konopac će mi dobro doći i na povratku.";
	otherwise if Konopac is carried:
		say "Konopac je korisniji ako ga [italic type]nosiš, [roman type]a ne samo imaš.";
		end the story saying "[bold type]YOU DIED" instead;
	otherwise:
		end the story saying "[bold type]YOU DIED" instead;

Crvena vrata is a door.
It is northeast of Dnevna soba and southwest of Smocnica.
It is closed.
It is openable.
It is locked.
It is scenery.
Crveni kljuc unlocks Crvena vrata.

[Zamka]
Rotirajuce ostrice is a door.
It is west of Radna soba and east of Kupaona. 
It is open.
It is not openable.
It is scenery.

Check going through Rotirajuce ostrice:
	say "Ne mogu ovo proći bez zaštite.";
	if Oklop is worn:
		say "Uspio sam! Nema natrag, jer se oklop oštećen.";
		remove Oklop from play;
	otherwise if Oklop is carried:
		say "Oklop je korisniji ako ga [italic type]nosiš."; 
		end the story saying "[bold type]YOU DIED" instead;
	otherwise:
		end the story saying "[bold type]YOU DIED" instead;
		
Krevet is in Garaza.
Krevet is scenery.
The player is on Krevet.

Before opening Smeda vrata:
	if the player is on Krevet:
		say "Još uvijek ležiš u krevetu.";
		stop the action.

Before going through smeda vrata:
	if the player is on Krevet:
		say "Još uvijek ležis u krevetu";
		stop the action.

Konopac is in Blagovaonica.
Konopac is wearable.
The description is "Ovo će mi dobro doći."

Frizider is a container.
The description is "Najbolje meso se nalazi ovdje."
It is in Kuhinja.
It is closed.
It is openable.
Kost is in frizider.
Kost is edible.
The description is "Ne voliš kosti, ali kad si gladan sve je dobro."

Ormaric is a container.
It is in Smocnica.
It is closed.
It is openable.
Bocica is in Ormaric.
The description is "Izgleda kao sprej protiv nametnika."

Zlatna skrinja is a container.
It is in Dnevna soba.
It is closed.
It is openable.
It is locked.
Zlatni kljuc unlocks Zlatna skrinja.
Zlatnici is in Zlatna skrinja.
The description is "Zlatnici različitih oblika. Nekima bi se činili čudnima, ali ne i tebi."

Crna skrinja is a container.
It is in Tavan.
It is closed.
It is openable.
It is locked.
Crni kljuc unlocks Crna skrinja.

Check opening Crna skrinja:
	if Crna skrinja is locked:
		say "Treba mi ključ za ovo.";
	otherwise:	
		say "Ovo bolje ne otvarati.";
		end the story saying "[bold type]YOU DIED" instead;

Stvorenje is in Podrum.
Stvorenje is an animal.
The description is "Iz mraka te promatraju dva žarka oka. Režanje postaje sve jače i jače. Izgleda da je netko jako gladan.
U kutu ispod svijetiljke vidiš zlatni ključ."

Check going to podrum:
	say "Iz podruma se čuje glasno režanje.";
	if Kost is carried:
		say "Ona kost iz Frižidera bi mogla biti korisna";
	otherwise:
		say "Nije pametno ući u sobu gdje možeš postati nečiji zalogaj.";
		end the story saying "[bold type]YOU DIED" instead.

Nahrani is an action applying to one visible thing.
Understand "daj [someone] kost" as nahrani.

Check Nahrani:
	if the noun is Stvorenje:
		say "Režanje je prestalo i zamjenilo ga je mljackanje. [the noun] se smirilo. Zgrabio si ključ i stavio ga u inventory.";
		now Kost is nowhere;
		move Zlatni kljuc to the player;
	otherwise:
		say "Mislim da bi netko drugi više uživao u ovome.";

Pojedi is an action applying to one visible thing.
Understand "pojedi [something]" as pojedi.

Check Pojedi:
	if something is Kobasica:
		say "To mi je kad kupujem kobasice po vrućini od pajdaša.";
		end the story saying "[bold type]YOU DIED";
	otherwise:
		now Kobasica is nowhere;

Zlatnici can be skupljen or neskupljen.
Zlatnici is neskupljen.
B is a number variable.
B is 0.
C is a number variable.
C is 0.
P is a number variable.
P is 0.
Instead of taking Zlatnici:
	if Zlatnici is skupljen:
		continue the action;
	otherwise:
		now P is 1500;
		now B is B plus P;
		now Zlatnici is skupljen;
		now the description of Zlatnici is "[B] Zlatnika.".

Tavan has a time called the opening hour.
The opening hour of Tavan is 10:30 AM.
Tavan has a time called the closing hour.
The closing hour of Tavan is 10:45 AM.

Check going to Tavan:
	if the time of day is before the opening hour of Tavan,
	say "Tavan je zaključan do [the opening hour of the Tavan] zbog vrućine." instead.
	
Check going to Tavan:
	if the time of day is after the closing hour of Tavan,
	say "Tavan je zaključan od [the closing hour of the Tavan] zbog vrućine." instead.

Every turn when the location is Tavan:
	let deadline be the closing hour of the location;
	if the deadline is before the time of day:
		say "Zbog velike vrućine si morao izaći van.";
		move the player to Blagovaonica.

Blagajna is in Tavan. "Stavi što si odabrao na blagajnu pajdo da ti mogu uzeti zlatnike hehe."
Blagajna can be Crnk, Ok, Ck, Ko, Og or prazna.
Blagajna is prazna.
Blagajna is scenery.

Crni kljuc is in Tavan.
Crni kljuc can be kupljeno or nekupljeno.
Crni kljuc is nekupljeno.
The description is "80 zlatnika."
Instead of taking Crni kljuc:
	if Crni kljuc is nekupljeno:
		say "Moraš to platiti pajdo!";
	otherwise:
		continue the action.

Instead of putting Crni kljuc on Blagajna:
	now Blagajna is Crnk;
	say "To će biti 80 zlatnika. Stavi zlatnike na blagajnu.".

Oklop is in Tavan.
Oklop is wearable.
Oklop can be kupljeno or nekupljeno.
Oklop is nekupljeno.
The description is "510 zlatnika."
Instead of taking Oklop:
	if Oklop is nekupljeno:
		say "Moraš to platiti pajdo!";
	otherwise:
		continue the action.

Instead of putting Oklop on Blagajna:
	now Blagajna is Ok;
	say "To će biti 510 zlatnika. Stavi zlatnike na blagajnu.".

Crveni kljuc is in Tavan.
Crveni kljuc can be kupljeno or nekupljeno.
Crveni kljuc is nekupljeno.
The description is "490 zlatnika."
Instead of taking Crveni kljuc:
	if Crveni kljuc is nekupljeno:
		say "Moraš to platiti pajdo!";
	otherwise:
		continue the action.

Instead of putting Crveni kljuc on Blagajna:
	now Blagajna is Ck;
	say "To će biti 490 zlatnika. Stavi zlatnike na blagajnu.".

Kobasica is in Tavan.
Kobasica can be kupljeno or nekupljeno.
Kobasica is nekupljeno.
The description is "200 zlatnika. Ova kobasica izgleda socno, a ja sam gladan."
Instead of taking Kobasica:
	if Kobasica is nekupljeno:
		say "Moraš to platiti pajdo!";
	otherwise:
		continue the action.

Instead of putting Kobasica on Blagajna:
	now Blagajna is Ko;
	say "To će biti 200 zlatnika. Stavi zlatnike na blagajnu.".

Ogrlica is in Tavan.
Ogrlica can be kupljeno or nekupljeno.
Ogrlica is nekupljeno.
The description is "350 zlatnika."
Instead of taking Ogrlica:
	if Ogrlica is nekupljeno:
		say "Moraš to platiti pajdo!";
	otherwise:
		continue the action.

Instead of putting Ogrlica on Blagajna:
	now Blagajna is Og;
	say "To će biti 350 zlatnika. Stavi zlatnike na blagajnu.".
	
Instead of putting Zlatnici on Blagajna:
	if Blagajna is prazna:
		say "Nisi ništa odabrao pajdo.";
	if Blagajna is Crnk:
		Now C is 80;
		if B is less than C:
			say "Nemaš dovoljno zlatnika pajdo!";
			now Blagajna is prazna;
		otherwise:
			now B is B minus C;
			now the description of Zlatnici is "[B] ";
			now Crni kljuc is kupljeno;
			now Blagajna is prazna;
			say "Je li to sve? Nemoj zaboraviti svoj Crni ključ. Imaš još [B] Zlatnika.";
	if Blagajna is Ok:
		Now C is 510;
		if B is less than C:
			say "Nemaš dovoljno zlatnika pajdo!";
			now Blagajna is prazna;
		otherwise:
			now B is B minus C;
			now the description of Zlatnici is "[B] Zlatnika";
			now Oklop is kupljeno;
			now Blagajna is prazna;
			say "Je li to sve? Nemoj zaboraviti svoj Oklop. Imaš još [B] Zlatnika.";
	if Blagajna is Ck:
		Now C is 490;
		if B is less than C:
			say "Nemaš dovoljno zlatnika pajdo!";
			now Blagajna is prazna;
		otherwise:
			now B is B minus C;
			now the description of Zlatnici is "[B] Zlatnika";
			now Crveni kljuc is kupljeno;
			now Blagajna is prazna;
			say "Je li to sve? Nemoj zaboraviti svoj Crveni ključ. Imaš još [B] Zlatnika.";	
	if Blagajna is Ko:
		Now C is 200;
		if B is less than C:
			say "Nemaš dovoljno zlatnika pajdo!";
			now Blagajna is prazna;
		otherwise:
			now B is B minus C;
			now the description of Zlatnici is "[B] Zlatnika";
			now Kobasica is kupljeno;
			now Blagajna is prazna;
			say "Je li to sve? Nemoj zaboraviti svoju Kobasicu. Imaš još [B] Zlatnika.";		
	if Blagajna is Og:
		Now C is 350;
		if B is less than C:
			say "Nemaš dovoljno zlatnika pajdo!";
			now Blagajna is prazna;
		otherwise:
			now B is B minus C;
			now the description of Zlatnici is "[B] Zlatnika";
			now Crni kljuc is kupljeno;
			now Blagajna is prazna;
			say "Je li to sve? Nemoj zaboraviti svoju Ogrlicu. Imaš još [B] Zlatnika.";
			
Instead of going to Vrt:
	if we have not taken Bocica:
		say "Kada ideš van potrebna ti je zaštita. Posebno protiv Krpelja.";
	otherwise:
		Move the player to Vrt.

Understand "Eugen" or "say Eugen" as casting Eugen.
Casting Eugen is an action applying to nothing.
Check casting Eugen:
	if the player is not in Kupaona:
		say "Da tako se zovem, ali mi to sada ne pomaže." instead.
Carry out casting Eugen:
	say "Nestao si u oblaku magle.";
now the player is in Spavaca soba.

Understand "Mijau" or "Mijau" as casting Mijau.
Casting Mijau is an action applying to nothing.
Check casting Mijau:
	if the player is in Spavaca soba:
		end the story saying "Konačno sam te našao.[bold type] Mijau [roman type]Tako sam gladan.[bold type] Mijau";
	otherwise:
		say "Nitko me ne cuje. "
		
Habdul is an animal in Tavan.

Table of Habdul Responses
Topic	Response			Index
"Posao"	"Posao ne ide baš najbolje, vruće je, spava mi se i jedva gledam."		"Posao"
"Zenski glas"	"Čuo sam kako te zove i traži. Ja sam malo prije kod nje jeo."			"Zenski glas"
	
After asking Habdul about something:
	if the topic understood is a topic listed in the Table of Habdul Responses:
		say "[Response entry]";

Table of Water Levels
Turn Number	Message
1	"[bold type]Čuju se tihi šumovi vode."
2	""
3	"[bold type]Zvukovi su malo bliži."
4	""
5	"[bold type]Zvukovi vode su prilično glasni."
6	""
7	"[bold type]Ta voda je sve bliže!"
8	""
9	"[bold type]Voda izbija kroz pod!"
10	""
11	"[bold type]Pools of water are on the ground."
12	""
13	"[bold type]Lokve vode su na tlu."
14	""
15	"[bold type]Voda je do koljena!"
16	""
17	"[bold type]Voda je do struka!"
18	""
19	"[bold type]Voda ti je do grudi.."
20	""
21	"[bold type]Voda ti je iznad glave..."
22	""
23	""

Every turn:
	say "[the message corresponding to a Turn Number of turn count in the Table of Water Levels]";
	if Turn Count is 23:
		end the story saying "Jedan život manje, još osam".