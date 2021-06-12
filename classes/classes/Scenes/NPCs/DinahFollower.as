/**
 * ...
 * @author Ormael
 */
package classes.Scenes.NPCs 
{
import classes.*;
import classes.Items.Consumable;
import classes.GlobalFlags.kFLAGS;
import classes.Scenes.NPCs.Dinah;
import classes.internals.Utils;

	public class DinahFollower extends NPCAwareContent
	{
		
		public function DinahFollower() 
		{}
		
<<<<<<< .merge_file_a13436
=======
		private var _extra:Number = 0;
		private var _roulette1:Number = 0;
		private var _roulette2:Number = 0;
		private var _roulette3:Number = 0;
		
>>>>>>> .merge_file_a28892
		public function dinahAffection(changes:Number = 0):Number {
			flags[kFLAGS.DINAH_AFFECTION] += changes;
			if (flags[kFLAGS.DINAH_AFFECTION] > 100) flags[kFLAGS.DINAH_AFFECTION] = 100;
			return flags[kFLAGS.DINAH_AFFECTION];
		}
		
		public function DinahIntro1():void {
			clearOutput();//non-camp intro
<<<<<<< .merge_file_a13436
=======
			_extra = (3 + rand(5));
>>>>>>> .merge_file_a28892
			//Camp offer!
			if (flags[kFLAGS.DINAH_DEFEATS_COUNTER] >= 3 && flags[kFLAGS.DINAH_LVL_UP] < 0.5) {
				flags[kFLAGS.DINAH_LVL_UP] = 0.5;
				outputText("You, once again, spot the mysterious veiled merchant in the distance. You turn around curtly to walk like nothing happened, lest they would decide to entertain themself with you fighting again.  Then the air trembles for a moment; and you're greeted face to face, well, face to hood-covered face with that eccentric merchant.\n\n");
				outputText("\"<i>You know, I think I might have much more fun being close to you.  Like, you know, hanging around in your camp, in case you need my goods. Or if I need someone to fight with. What do you say?</i>\" asks the merchant.\n\n(Move mysterious veiled merchant into your camp?)");
				doYesNo(DinahMoveToCamp, DinahMoveDecline);
				return;
			}
			if (flags[kFLAGS.DINAH_LVL_UP] >= 0.25) {
				outputText("You spot the mysterious veiled merchant in the distance. While reconsidering if you should just turn back; they notice you, and start to cast the same magic seal you saw before. Looks like you, once again, become their 'entertainent', but at least they will let you buy something nice as long you have the gems for it, right?");
			}
			else {
				outputText("As you travel; you see another person on the road, they are tethered to a small cart.  The figure is dressed in long cape with a hood covering their body from head to feet. You can't be sure if they're male or female.  Then they notice your presence and stops the cart suddenly.\n\n");
				outputText("\"<i>Greetings, traveler! You come at a good moment, my boredom was getting too uncomfortable. Maybe, if you entertain me enough, I might let you browse my wares. You will be able to PURCHASE them if any of them catch your attention.</i>\" Even it voice is neither male or female.\n\n");
				outputText("When you thinking over, they mutter some words and raise one of their hands to make some sort of magical seal in the air.  Almost instantly; something from the magical seal jumps out.  Something that almost instantly pounces toward you. Yes, now it's cleary what that person meant by entertaining them, so you prepare your [weapon].");
				flags[kFLAGS.DINAH_LVL_UP] = 0.25;
				flags[kFLAGS.DINAH_CUP_SIZE] = 1;
				flags[kFLAGS.DINAH_HIPS_ASS_SIZE] = 1;
			}
			startCombat(new Dinah());
		}
		private function DinahMoveToCamp():void {
			clearOutput();
			outputText("They smile happily back at you, showing for the first time a tiny bit of skin. The wide smile is somewhat disturbing under their hood, and they begin packing up their equipment.  They mutter over their shoulder, \"<i>This will be so much fun. I could just feel the excitement in my tails. You can head on back and I'll see you within the hour, maybe a bit sooner or a bit later.  Oh my, yeah.</i>\" ");
			outputText(" They stop for a moment as if recalling something and then they pull off their hood, revealing a head covered with fiery black and purple hair parted by cat ears, and  two pairs of small horns. Looking at you, with her literally burning eyes, she only utters one word, with a clearly female voice now, before disapearing, \"<i>Dinah.</i>\"");
			outputText("\n\n(<b>Dinah has been added to the Followers menu!</b>)\n\n");
			if (flags[kFLAGS.CODEX_ENTRY_CHIMERA] <= 0) {
					flags[kFLAGS.CODEX_ENTRY_CHIMERA] = 1;
					outputText("<b>New codex entry unlocked: Chimera!</b>\n\n");
				}
			flags[kFLAGS.DINAH_LVL_UP] = 1;
			flags[kFLAGS.DINAH_DEFEATS_COUNTER] = 0;
			flags[kFLAGS.DINAH_AFFECTION] = 0;
			doNext(camp.returnToCampUseOneHour);
		}
		private function DinahMoveDecline():void {
			clearOutput();
			outputText("They wheeze out an exaggerated sigh.\n\n\"<i>So much of letdown.</i>\" they mutter, as they pack up their goods to travel toward the horizon.");
			doNext(camp.returnToCampUseOneHour);
		}
		public function DinahIntro2():void {
			clearOutput();//camp intro
<<<<<<< .merge_file_a13436
=======
			_extra = (1 + rand(3));
<<<<<<< HEAD
>>>>>>> .merge_file_a28892
=======
			if (rand(2) == 0) _roulette1 = (1 + rand(4));
			if (rand(2) == 0) _roulette2 = (1 + rand(3));
			if (rand(2) == 0) _roulette3 = (1 + rand(5));
>>>>>>> 919733794f453c5d19a97165f9142a6c9fc5836a
			outputText("\"<i>Oh, Great Lady Godiva, tell us your will!</i>\" With religious zeal, Dinah pulls a coin out of nowhere and throws it into the air. But before it can fall on the ground, it vanishes. ");
			if (rand(4) > 0 && flags[kFLAGS.DINAH_AFFECTION] < 90) {
				outputText("\"<i>The Coin Told Me To <b>Cuddle</b> You.</i>\" her smile becomes even wider. You've got a <i>very</i> bad feeling about this. It looks like there is no other choice. You've gotta to beat some sense into her before getting back to buisness.");
				startCombat(new Dinah());
			}
			else {
				outputText("\"<i>Seems the odds where in your favor this time.</i>\" she remarks with a somewhat disappointed voice.");
				doNext(DinahMainMenu);
			}
		}
		public function DinahMainMenu():void {
			var atCamp:Boolean = (flags[kFLAGS.DINAH_LVL_UP] > 0.5);
			var weather_choice:Array = ["sunny", "rainy", "snowy", "windy", "dankest", "reeking with undistilled lust"];
			clearOutput();
			if (atCamp) outputText("\"<i>What can I do for you, [name], this " + randomChoice(weather_choice) + " day?</i>\" Dinha asks you with a disturbingly wide and briliant smile on her face.");
			else outputText("\"<i>Will you gaze at me the whole day or will you buy something?</i>\" They grumble to themselves.");
			menu();
			addButton(2, "Shop", DinahShopMainMenu);
			if (atCamp) {
				addButton(0, "Appearance", DinahAppearance);
				addButton(1, "Spar", DinahSparring);
				addButtonDisabled(3, "Talk", "NYI");
				addButtonDisabled(4, "Sex", "NYI");
				addButtonDisabled(5, "Present", "NYI");//5 i 6 skopiować z MarbleScene.as i dostosować
				addButtonDisabled(6, "Give Item", "NYI");
				//addButton(6, "Give Item", canGiveItem() ? giveItem : null);
				addButton(14, "Back", camp.campFollowers);
			}
			else {
				if (flags[kFLAGS.DINAH_LVL_UP] >= 0.5) addButton(13, "Inv2Camp", DinahMoveToCamp);
				addButton(14, "Leave", camp.returnToCampUseOneHour);
			}
		}
		
		public function DinahAppearance():void {
			clearOutput();
			outputText("Dinah is a 7' 8\" tall cat chimera of seemly all cat races in this realm. Burning eyes like those of hellcats and, fiery hair with colors like those of cheshire cats, parted by twin pair of small horns. Behind her slowly moves two blazing tails, and two long tentacles similar to that of a calamari. Her four arms completes her chimeric visage.");
			outputText("");//She has " + amilyHips() + " and a " + amilyButt() + ". She has a pair of " + amilyTits() + " on her chest. They have " + flags[kFLAGS.AMILY_NIPPLE_LENGTH] + "-inch nipples at their tips and must be at least " + Appearance.breastCup(flags[kFLAGS.AMILY_CUP_SIZE]) + "s.	" + Appearance.breastCup(flags[kFLAGS.DINAH_CUP_SIZE]) + "
			menu();//very long, flowing locks of - between shouled length and ass length - hair desc
			addButton(14, "Back", DinahMainMenu);
		}
		
		public function DinahSparring():void {
			clearOutput();
			outputText("\"<i>Oh, you sensed my slowly building boredom? Not gonna say no to some entertaiment!</i>\" she makes few strenches and assumes a combat pose. \"<i>Let's <b>play</b> [name]!</i>\".");
			player.createStatusEffect(StatusEffects.CampSparingDinah,0,0,0,0);
			startCombat(new Dinah());
		}
		public function DinahWonSparring():void {
			clearOutput();
			outputText("\"<i>Point for the House Griff... Err I mean for the team of Dinah and Lady Godiva!</i>\" she giggles while doing a short victory dance.");
			cleanupAfterCombat();
		}
		public function DinahLostSparring():void {
			clearOutput();
			outputText("\"<i>Was that your will, Lady Godiva?</i>\" she mumbles under her breath.");
			if (flags[kFLAGS.SPARRABLE_NPCS_TRAINING] == 2) {
				if (flags[kFLAGS.DINAH_DEFEATS_COUNTER] >= 1) flags[kFLAGS.DINAH_DEFEATS_COUNTER]++;
				else flags[kFLAGS.DINAH_DEFEATS_COUNTER] = 1;
				if (flags[kFLAGS.DINAH_DEFEATS_COUNTER] == 1 && flags[kFLAGS.DINAH_LVL_UP] == 1) {
					if (player.hasStatusEffect(StatusEffects.CampSparingNpcsTimers3)) player.addStatusValue(StatusEffects.CampSparingNpcsTimers3, 3, 6);
					else player.createStatusEffect(StatusEffects.CampSparingNpcsTimers3, 0, 0, 6, 0);
					flags[kFLAGS.DINAH_DEFEATS_COUNTER] = 0;
					flags[kFLAGS.DINAH_LVL_UP] = 2;
				}
				if (flags[kFLAGS.DINAH_DEFEATS_COUNTER] == 2 && flags[kFLAGS.DINAH_LVL_UP] == 2) {
					if (player.hasStatusEffect(StatusEffects.CampSparingNpcsTimers3)) player.addStatusValue(StatusEffects.CampSparingNpcsTimers3, 3, 12);
					else player.createStatusEffect(StatusEffects.CampSparingNpcsTimers3, 0, 0, 12, 0);
					flags[kFLAGS.DINAH_DEFEATS_COUNTER] = 0;
					flags[kFLAGS.DINAH_LVL_UP] = 3;
				}
				if (flags[kFLAGS.DINAH_DEFEATS_COUNTER] == 3 && flags[kFLAGS.DINAH_LVL_UP] == 3) {
					if (player.hasStatusEffect(StatusEffects.CampSparingNpcsTimers3)) player.addStatusValue(StatusEffects.CampSparingNpcsTimers3, 3, 18);
					else player.createStatusEffect(StatusEffects.CampSparingNpcsTimers3, 0, 0, 18, 0);
					flags[kFLAGS.DINAH_DEFEATS_COUNTER] = 0;
					flags[kFLAGS.DINAH_LVL_UP] = 4;
				}
				if (flags[kFLAGS.DINAH_DEFEATS_COUNTER] == 4 && flags[kFLAGS.DINAH_LVL_UP] == 4) {
					if (player.hasStatusEffect(StatusEffects.CampSparingNpcsTimers3)) player.addStatusValue(StatusEffects.CampSparingNpcsTimers3, 3, 24);
					else player.createStatusEffect(StatusEffects.CampSparingNpcsTimers3, 0, 0, 24, 0);
					flags[kFLAGS.DINAH_DEFEATS_COUNTER] = 0;
					flags[kFLAGS.DINAH_LVL_UP] = 5;
				}
				if (flags[kFLAGS.DINAH_DEFEATS_COUNTER] == 5 && flags[kFLAGS.DINAH_LVL_UP] == 5) {
					if (player.hasStatusEffect(StatusEffects.CampSparingNpcsTimers3)) player.addStatusValue(StatusEffects.CampSparingNpcsTimers3, 3, 30);
					else player.createStatusEffect(StatusEffects.CampSparingNpcsTimers3, 0, 0, 30, 0);
					flags[kFLAGS.DINAH_DEFEATS_COUNTER] = 0;
					flags[kFLAGS.DINAH_LVL_UP] = 6;
				}
				if (flags[kFLAGS.DINAH_DEFEATS_COUNTER] == 6 && flags[kFLAGS.DINAH_LVL_UP] == 6) {
					if (player.hasStatusEffect(StatusEffects.CampSparingNpcsTimers3)) player.addStatusValue(StatusEffects.CampSparingNpcsTimers3, 3, 36);
					else player.createStatusEffect(StatusEffects.CampSparingNpcsTimers3, 0, 0, 36, 0);
					flags[kFLAGS.DINAH_DEFEATS_COUNTER] = 0;
					flags[kFLAGS.DINAH_LVL_UP] = 7;
				}
				if (flags[kFLAGS.DINAH_DEFEATS_COUNTER] == 7 && flags[kFLAGS.DINAH_LVL_UP] == 7) {
					if (player.hasStatusEffect(StatusEffects.CampSparingNpcsTimers3)) player.addStatusValue(StatusEffects.CampSparingNpcsTimers3, 3, 42);
					else player.createStatusEffect(StatusEffects.CampSparingNpcsTimers3, 0, 0, 42, 0);
					flags[kFLAGS.DINAH_DEFEATS_COUNTER] = 0;
					flags[kFLAGS.DINAH_LVL_UP] = 8;
				}
				if (flags[kFLAGS.DINAH_DEFEATS_COUNTER] == 8 && flags[kFLAGS.DINAH_LVL_UP] == 8) {
					if (player.hasStatusEffect(StatusEffects.CampSparingNpcsTimers3)) player.addStatusValue(StatusEffects.CampSparingNpcsTimers3, 3, 48);
					else player.createStatusEffect(StatusEffects.CampSparingNpcsTimers3, 0, 0, 48, 0);
					flags[kFLAGS.DINAH_DEFEATS_COUNTER] = 0;
					flags[kFLAGS.DINAH_LVL_UP] = 9;
				}
			}
			cleanupAfterCombat();
		}
		
		public function DinahShopMainMenu():void {
			clearOutput();
			outputText("You begin to browse "+(flags[kFLAGS.DINAH_LVL_UP] > 0.5 ?"Dinah":"veiled merchant")+" shop inventory.");
			menu();
			addButton(0, consumables.AGILI_E.shortName, buyItem1, 0).hint("Buy an agility elixir.");
			addButton(1, consumables.W_FRUIT.shortName, buyItem1, 1).hint("Buy a piece of whisker-fruit.");
			addButton(2, consumables.WOFRUIT.shortName, buyItem2, 2).hint("Buy a Wonder fruit.");
			addButton(3, consumables.G_FRUIT.shortName, buyItem2, 3).hint("Buy a Ghastly Fruit");
			addButton(4, consumables.D_FRUIT.shortName, buyItem2, 4).hint("Buy a Displacement Fruit.");
			addButton(5, consumables.MANTICV.shortName, buyItem3, 5).hint("Buy a vial of manticore venom.");
			addButton(6, consumables.VOLTTOP.shortName, buyItem3, 6).hint("Buy a Voltage topaz.");
			addButton(7, consumables.REDVIAL.shortName, buyItem3, 7).hint("Buy a vial of ominous red liquid.");
			addButton(8, consumables.STRASCA.shortName, buyItem2, 8).hint("Buy a Strawberry shortcake.");
			addButton(9, consumables.BCHCAKE.shortName, buyItem2, 9).hint("Buy a Big chocolate cake.");
<<<<<<< HEAD
<<<<<<< .merge_file_a13436
			if (flags[kFLAGS.PATCHOULI_AND_WONDERLAND] >= 1) addButton(10, consumables.JABBERS.shortName, buyItem3, 13).hint("Buy a Jabberwocky scale.");
			else addButtonDisabled(10, "???", "Req. to beat one of bosses in Wonderland to have access to this TF item.");
			if (flags[kFLAGS.DINAH_LVL_UP] >= 1) {
				if (player.statusEffectv2(StatusEffects.TFDealer1) > 0) addButton(11, consumables.HYDRASC.shortName, buyItem3, 11).hint("Buy a hydra scale.");
				else addButtonDisabled(11, "???", "Req. to beat one of bosses in Ebon Labyrinth to have access to this TF item.");
				if (player.statusEffectv3(StatusEffects.TFDealer1) > 0) addButton(12, consumables.FSNAILS.shortName, buyItem3, 12).hint("Buy a Fire snail Saliva.");
				else addButtonDisabled(12, "???", "Req. to beat one of bosses in Ebon Labyrinth to have access to this TF item.");
				if (player.statusEffectv1(StatusEffects.TFDealer1) > 0) addButton(13, consumables.DSLIMEJ.shortName, buyItem3, 10).hint("Buy a Big Dark slime jelly.");
				else addButtonDisabled(13, "???", "Req. to beat one of bosses in Ebon Labyrinth to have access to this TF item.");
			}
			addButton(14, "Back", DinahMainMenu);
=======
			addButton(10, "Boss D.", DinahShopMainMenu2);
=======
			if (flags[kFLAGS.DINAH_LVL_UP] > 0.5) {
				addButton(10, "Boss D.", DinahShopMainMenu2);
				addButton(12, "Roulette", DinahShopMainMenu3).hint("You feelin' lucky champion?");
			}
			else {
				addButtonDisabled(10, "Boss D.", "Maybe if merchant would be more interested in you...");
				addButtonDisabled(12, "Roulette", "Maybe if merchant would be more interested in you...");
			}
>>>>>>> 919733794f453c5d19a97165f9142a6c9fc5836a
			addButton(14, "Back", DinahMainMenu);
		}
		public function DinahShopMainMenu2():void {
			clearOutput();
			outputText("You begin to browse Dinah shop inventory.");
			menu();
			if (flags[kFLAGS.PATCHOULI_AND_WONDERLAND] >= 1) addButton(0, consumables.JABBERS.shortName, buyItem4, 23).hint("Buy a Jabberwocky Scale.");
			else addButtonDisabled(0, "???", "Req. to beat one of bosses in Wonderland to have access to this TF item.");
			if (flags[kFLAGS.DINAH_LVL_UP] >= 1) {
				if (player.statusEffectv2(StatusEffects.TFDealer1) > 0) addButton(1, consumables.HYDRASC.shortName, buyItem4, 21).hint("Buy a Hydra Scale.");
				else addButtonDisabled(1, "???", "Req. to beat one of bosses in Ebon Labyrinth to have access to this TF item.");
				if (player.statusEffectv3(StatusEffects.TFDealer1) > 0) addButton(2, consumables.FSNAILS.shortName, buyItem4, 22).hint("Buy a Fire Snail Saliva.");
				else addButtonDisabled(2, "???", "Req. to beat one of bosses in Ebon Labyrinth to have access to this TF item.");
				if (player.statusEffectv1(StatusEffects.TFDealer1) > 0) addButton(3, consumables.DSLIMEJ.shortName, buyItem4, 20).hint("Buy a Dark Slime Jelly.");
				else addButtonDisabled(3, "???", "Req. to beat one of bosses in Ebon Labyrinth to have access to this TF item.");
				if (player.statusEffectv1(StatusEffects.TFDealer2) > 0) addButton(4, consumables.ME_DROP.shortName, buyItem4, 24).hint("Buy a Magic Eye Drop.");
				else addButtonDisabled(3, "???", "Req. to beat one of bosses in Ebon Labyrinth to have access to this TF item.");
				if (player.statusEffectv2(StatusEffects.TFDealer2) > 0) addButton(5, consumables.M_GOSSR.shortName, buyItem4, 25).hint("Buy a Midnight Black Glossamer.");
				else addButtonDisabled(3, "???", "Req. to beat one of bosses in Ebon Labyrinth to have access to this TF item.");
			}
			addButton(14, "Back", DinahShopMainMenu);
>>>>>>> .merge_file_a28892
		}
		public function DinahShopMainMenu3():void {
			clearOutput();
			outputText("You begin to browse Dinah shop inventory.");
			menu();
			if (_roulette1 == 0) addButtonDisabled(1, "???", "Dud. Shame, shame.");
			if (_roulette1 == 1) addButton(1, "UnDefKingS", buyItem5, 40).hint("Undefeated King's Signet - Increase max wrath by 100. When worn on right hand (slot 1 and 3 for rings) would have additional effects: increase max wrath by another 100 (with base bonus it's +200), generate 6/3 wrath per turn/hour, increase multiplied on Power Attack damage by 1.");
			if (_roulette1 == 2) addButton(1, "CroUndefKing", buyItem5, 41).hint("Crown of the Undefeated King - You can't loose by HP until reaching droping into negative health larger than 5% of max HP + 500(scalable). When below 0 HP PC would gain additional 1% of max HP per turn regeneration effect.");
			if (_roulette1 == 3) addButton(1, "UnDefKingDest", buyItem5, 42).hint("Undefeated King's Destroyer - Massive mace weapon that will increase PC parry chance by 20%. Have 20% base chance for stun (3 rounds).");
			if (_roulette2 == 0) addButtonDisabled(2, "???", "Dud. Shame, shame.");
			if (_roulette2 == 1) addButton(2, "FlameLizR", buyItem5, 45).hint("Flame Lizard ring - Increases maximum Wrath by 75. Generate 2/1 wrath per turn/hour. Allow to use Lustzerker.");
			if (_roulette2 == 2) addButton(2, "InferMouseR", buyItem5, 46).hint("Infernal Mouse ring - Increases maximum Wrath by 75. Generate 2/1 wrath per turn/hour. Allow to use Blazing battle spirit.");
			if (_roulette3 == 0) addButtonDisabled(3, "???", "Dud. Shame, shame.");
			if (_roulette3 == 1) addButton(3, "HBHelmet", buyItem5, 50).hint("HB helmet - Increase armor by 5 and magic resistance by 4.");
			if (_roulette3 == 2) addButton(3, "HBArmor", buyItem5, 51).hint("HB armor - Increasing it armor/resistance when power up by soulforce.");
			//later put her lower body armor part of HB set
			if (_roulette3 == 3) addButton(3, "HBShirt", buyItem5, 52).hint("HB Shirt - Increase armor by 4, magic resistance by 3, fire/ice/electric resistance by 10%.");
			if (_roulette3 == 4) addButton(3, "HBShorts", buyItem5, 53).hint("HB Shorts - Increase armor by 4, magic resistance by 3, fire/ice/electric resistance by 10%.");
			addButton(14, "Back", DinahShopMainMenu);
		}
		private function buyItem1(item:Number = 0):void {
			if (item == 0) catChimeraBuy1(consumables.AGILI_E);
			if (item == 1) catChimeraBuy1(consumables.W_FRUIT);
		}
		private function buyItem2(item:Number = 0):void {
			if (item == 2) catChimeraBuy2(consumables.WOFRUIT);
			if (item == 3) catChimeraBuy2(consumables.G_FRUIT);
			if (item == 4) catChimeraBuy2(consumables.D_FRUIT);
			if (item == 8) catChimeraBuy2(consumables.STRASCA);
			if (item == 9) catChimeraBuy2(consumables.BCHCAKE);
		}
		private function buyItem3(item:Number = 0):void {
<<<<<<< .merge_file_a13436
			if (item == 5) catChimeraBuy2(consumables.MANTICV);
			if (item == 6) catChimeraBuy2(consumables.VOLTTOP);
			if (item == 7) catChimeraBuy2(consumables.REDVIAL);
			if (item == 10) catChimeraBuy2(consumables.DSLIMEJ);
			if (item == 11) catChimeraBuy2(consumables.HYDRASC);
			if (item == 12) catChimeraBuy2(consumables.FSNAILS);
			if (item == 13) catChimeraBuy2(consumables.JABBERS);
=======
			if (item == 5) catChimeraBuy3(consumables.MANTICV);
			if (item == 6) catChimeraBuy3(consumables.VOLTTOP);
			if (item == 7) catChimeraBuy3(consumables.REDVIAL);
		}
		private function buyItem4(item:Number = 0):void {
			if (item == 20) catChimeraBuy4(consumables.DSLIMEJ);
			if (item == 21) catChimeraBuy4(consumables.HYDRASC);
			if (item == 22) catChimeraBuy4(consumables.FSNAILS);
			if (item == 23) catChimeraBuy4(consumables.JABBERS);
			if (item == 24) catChimeraBuy4(consumables.ME_DROP);
			if (item == 25) catChimeraBuy4(consumables.M_GOSSR);
>>>>>>> .merge_file_a28892
		}
		private function buyItem5(item:Number = 0):void {
			if (item == 40) catChimeraBuy5(jewelries.UNDKINS);
			if (item == 41) catChimeraBuy5(headjewelries.CUNDKIN);
			if (item == 42) catChimeraBuy5(weapons.UDKDEST);
			if (item == 45) catChimeraBuy5(jewelries.FLLIRNG);
			if (item == 46) catChimeraBuy5(jewelries.INMORNG);
			if (item == 50) catChimeraBuy5(headjewelries.HBHELM);
			if (item == 51) catChimeraBuy5(armors.HBARMOR);
			if (item == 52) catChimeraBuy5(undergarments.HBSHIRT);
			if (item == 53) catChimeraBuy5(undergarments.HBSHORT);
			//if (item == 40) catChimeraBuy5();
			//if (item == 40) catChimeraBuy5();
		}
		public function catChimeraBuy1(itype:ItemType):void {
			clearOutput();
			outputText("You point out the " + itype.longName + ".\n\n");
<<<<<<< .merge_file_a13436
			outputText("\"<i>Oh this one? It costs " + itype.value + " gems.</i>\"");
			if (player.gems < itype.value) {
=======
			outputText("\"<i>Oh this one? It costs " + (itype.value * (1 + _extra)) + " gems.</i>\"");
			if (player.gems < (itype.value * (1 + _extra))) {
>>>>>>> .merge_file_a28892
				outputText("\n<b>You don't have enough gems...</b>");
				doNext(DinahShopMainMenu);
				return;
			}
			doYesNo(Utils.curry(catChimeraTransact1,itype), DinahShopMainMenu);
		}
		public function catChimeraBuy2(itype:ItemType):void {
			clearOutput();
			outputText("You point out the " + itype.longName + ".\n\n");
<<<<<<< .merge_file_a13436
			outputText("\"<i>Oh this one? It costs " + (itype.value * 2) + " gems.</i>\"");
			if (player.gems < (itype.value * 2)) {
=======
			outputText("\"<i>Oh this one? It costs " + (itype.value * (2 + _extra)) + " gems.</i>\"");
			if (player.gems < (itype.value * (2 + _extra))) {
>>>>>>> .merge_file_a28892
				outputText("\n<b>You don't have enough gems...</b>");
				doNext(DinahShopMainMenu);
				return;
			}
			doYesNo(Utils.curry(catChimeraTransact2,itype), DinahShopMainMenu);
		}
		public function catChimeraBuy3(itype:ItemType):void {
			clearOutput();
			outputText("You point out the " + itype.longName + ".\n\n");
<<<<<<< .merge_file_a13436
			outputText("\"<i>Oh this one? It costs " + (itype.value * 4) + " gems.</i>\"");
			if (player.gems < (itype.value * 4)) {
=======
			outputText("\"<i>Oh this one? It costs " + (itype.value * (4 + _extra)) + " gems.</i>\"");
			if (player.gems < (itype.value * (4 + _extra))) {
>>>>>>> .merge_file_a28892
				outputText("\n<b>You don't have enough gems...</b>");
				doNext(DinahShopMainMenu);
				return;
			}
			doYesNo(Utils.curry(catChimeraTransact3,itype), DinahShopMainMenu);
		}
<<<<<<< .merge_file_a13436
		public function catChimeraTransact1(itype:ItemType):void {
			clearOutput();
			player.gems -= itype.value;
=======
		public function catChimeraBuy4(itype:ItemType):void {
			clearOutput();
			outputText("You point out the " + itype.longName + ".\n\n");
			outputText("\"<i>Oh this one? It costs " + (itype.value * (6 + _extra)) + " gems.</i>\"");
			if (player.gems < (itype.value * (6 + _extra))) {
				outputText("\n<b>You don't have enough gems...</b>");
				doNext(DinahShopMainMenu2);
				return;
			}
			doYesNo(Utils.curry(catChimeraTransact4,itype), DinahShopMainMenu2);
		}
		public function catChimeraBuy5(itype:ItemType):void {
			clearOutput();
			outputText("You point out the " + itype.longName + ".\n\n");
			outputText("\"<i>Oh this one? It costs " + (itype.value * _extra) + " gems.</i>\"");
			if (player.gems < (itype.value * _extra)) {
				outputText("\n<b>You don't have enough gems...</b>");
				doNext(DinahShopMainMenu3);
				return;
			}
			doYesNo(Utils.curry(catChimeraTransact4,itype), DinahShopMainMenu2);
		}
		public function catChimeraTransact1(itype:ItemType):void {
			clearOutput();
			player.gems -= itype.value * (1 + _extra);
>>>>>>> .merge_file_a28892
			statScreenRefresh();
			inventory.takeItem(itype, DinahShopMainMenu);
		}
		public function catChimeraTransact2(itype:ItemType):void {
			clearOutput();
<<<<<<< .merge_file_a13436
			player.gems -= itype.value * 2;
=======
			player.gems -= itype.value * (2 + _extra);
>>>>>>> .merge_file_a28892
			statScreenRefresh();
			inventory.takeItem(itype, DinahShopMainMenu);
		}
		public function catChimeraTransact3(itype:ItemType):void {
			clearOutput();
<<<<<<< .merge_file_a13436
			player.gems -= itype.value * 4;
			statScreenRefresh();
			inventory.takeItem(itype, DinahShopMainMenu);
		}
=======
			player.gems -= itype.value * (4 + _extra);
			statScreenRefresh();
			inventory.takeItem(itype, DinahShopMainMenu);
		}
		public function catChimeraTransact4(itype:ItemType):void {
			clearOutput();
			player.gems -= itype.value * (6 + _extra);
			statScreenRefresh();
			inventory.takeItem(itype, DinahShopMainMenu2);
		}
<<<<<<< HEAD
>>>>>>> .merge_file_a28892
=======
		public function catChimeraTransact5(itype:ItemType):void {
			clearOutput();
			player.gems -= itype.value * _extra;
			statScreenRefresh();
			inventory.takeItem(itype, DinahShopMainMenu3);
		}
>>>>>>> 919733794f453c5d19a97165f9142a6c9fc5836a
	}
}