import java.util.HashMap
import java.util.List
import java.util.Random

@random = Random.new

def selectFrom(aList:List)
	aList.get(@random.nextInt(aList.size))
end

def chooseATitle
	firstTitle =["Chrono", "Neuro", "Aero", "Cosmo", "Reve", "Necro", "Cyber", "Astro", "Pyscho", "Steam", "Meta", "Black"]
	secondTitle = ["punk", "mech", "noiac", "(o)poli", "naut", "phage", "droid", "bot", "blade", "tron", "mancer", "War"]
	"The #{selectFrom(firstTitle)}#{selectFrom(secondTitle)}"
end

def makeSomeChoices
	{:return => java.util.HashMap}
	story = HashMap.new
	
	culture = ["neo-noir", "alternate-history", "ancient", "post-apocalyptic", "dystopian", "virtual", "metaphorical", "anachronistic", "leather-clad", "coal-powered", "dragon-filled", "shrill"]
	location = ["America", "Japan", "Soviet Russia", "Victorian Britain", "medieval Europe", "Aztec empire", "Atlantis", "terraformed Mars", "Antarctica", "one-way spaceflight", "Outer Rim world"]
	who = ["flying courier", "student of metaphysics", "milquetoast office drone", "schlub with mild OCD", "farmboy with dreams", "techno-obsessed geek", "brooding loner", "wisecracking mercenary", "idealistic revolutionary", "journeyman inventor", "collector of oddities"]
	mcguffin = ["magic diadem", "arcane prophecy", "dusty old tome", "crazy old man", "alien artifact", "enchanted sword", "otherworldly portal", "dream-inducing drug", "encrypted data feed", "time-travelling soldier", "exiled angel", "talking fish"]
	foe = ["a megalomaniacal dictator", "a government conspiracy", "a profit-obsessed corporation", "a sneering wizard", "supernatural monsters", "murderous robots", "a sadistic general", "forces that encourage conformity", "a charismatic politician on the rise", "humanity's selfish nature", "his own sexual insecurity"]
	allies = ["sarcastic female techno-geek", "tomboyish female mechanic", "shape-shifting female assassin", "leather-clad female in shades", "girl who's always loved him"]
	helpfulTools = ["wacky pet", "welding gear", "closet full of assault rifles", "reference book", "cleavage", "facility with magic", "condescending tone", "discomfort in formal wear", "propensity for being captured"]
	outcomes = ["a fistfight atop a tower", "a daring rescue preceding a giant explosion", "a heroic sacrifice that no-one will ever remember", "a philosophical argument punctuated by violence", "a false victory with the promise of future danger", "the invocation of a spell at the last-possible minute", "eternal love professed without irony", "the land restored to health"]
	
	

	story.put("culture", selectFrom(culture))
	story.put("location", selectFrom(location))
	story.put('who', selectFrom(who))
	story.put('mcguffin', selectFrom(mcguffin))
	story.put('foe', selectFrom(foe))
	story.put('ally', selectFrom(allies))
	story.put('helpful.tool', selectFrom(helpfulTools))
	story.put('outcome', selectFrom(outcomes))
	
	story.put('title', chooseATitle)
	return story
end

story = makeSomeChoices()

puts story.get('title')

puts "In a #{story.get('culture')} #{story.get('location')}, a young #{story.get('who')} stumbles across a #{story.get('mcguffin')} which spurs them into conflict with #{story.get('foe')}; with the aid of a #{story.get('ally')} and her #{story.get('helpful.tool')} the adventure reaches a climax in #{story.get('outcome')}."

puts "http://wondermark.com/554/"