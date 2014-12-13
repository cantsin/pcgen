<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<!--
PCGen Character Sheet Template
==============================
Author: Richard O'Doherty-Gregg
Email: OdGregg@bigpond.com
Modifications by: arcady
Email: arcady0@yahoo.com
Revisions: Barak  10/15/02
Email: barak@voyager.net

$Revision: 24276 $
$Author: amaitland $
$Date: 2014-06-22 17:06:25 -0700 (Sun, 22 Jun 2014) $
-->
<head>
<!-- Do not use non ASCII characters in this file,
 the content type charset is ignored in favor of the OS default.
 See CODE-2240 -->
<meta http-equiv="content-type" content="text-html; charset=utf-8" />
<title>|NAME| [|POOL.COST| Points]</title>
<style type="text/css">
	.font2 {
		font-size:17%; 
	}
	.lable, .topline {
		font-size:50%;
	}
	.border6 {
		font-size:xx-small;
	}
	.font8, .ablable, .ablableb, .sptab, .sptab1, .sptab2, .notetab, .spname, .sptop, .borderbottom8, .border8, .biodata, .skl, .splevel {
		font-size:x-small;
	}
	.font10, .sign, .key, .border10, .skill, .skillvalue, .border10c, .border10cb {
		font-size:small;
	}
	.font12, .h, .ab, .abb, .abt, .notehead, .sphead {
		font-size:medium;
	}
	.font14{
		font-size:large; 
	}
	.item {
		font-size:x-large;
	}
	.h { 
		vertical-align: bottom;
	}
	.ab { 
		text-align:center;
		color:white; 
		background:black;
	}
	.ablable, .ablableb { 
		text-align:center; 
		color:white; 
		background:black;
	}
	.abb {
		text-align:center; 
		font-weight:bold; 
		border: 1px solid black;
	}
	.abt { 
		text-align:center; 
		font-weight:bold; 
		border: 5px solid #CCCCCC;
	}
	.item { 
		text-align:center; 
		color:white; 
		background:black;
	}
	.sptab { 
		vertical-align:top; 
		text-align:center;
	}
	.sptab1 { 
		vertical-align:top; 
		text-align:left;
	}
	.sptab2 { 
		vertical-align:top; 
		text-align:right;
	}
	.notetab { 
		vertical-align:top;
		border: 1px solid black; 
		text-align:left;
	}
	.skl { 
		font-weight:bold; 
		text-align:center; 
		vertical-align:middle; 
		border: 4px solid black;
	}
	.skillValue {
	border-top-width: 1px;
	border-top-style: solid;
	border-top-color: black;
	}
	.topline {
		border-top-width:1px; 
		border-top: 1pt solid black; 
	}
	.spname { 
		vertical-align:top; 
		text-align:left;
	}
	.sptop { 
		vertical-align:top;
		border: 1px solid black; 
		text-align:center;
		color:white;
	}
	.splevel {  
		background:black; 
		text-align:center;
		color:white;
	}
	.sphead {  
		background:black; 
		text-align:center;
		color:white;
	}
	.notehead {  
		background:black; 
		text-align:center;
		color:white;
	}
	.border10c, .border10cb {
		text-align:center;
	}
	.border10cb, .ablableb {
		font-weight: bold;
	}
	.biodata { 
		vertical-align:bottom; 
		text-align:left;
	}
	.border, .border4, .border6, .border8, .border10, .border10c, .border10cb {
		border: 1px solid black;
	}
	.tempborder {
		border: 5px solid lightgray;
	}
	.borderbottom {
		border-bottom-width:1px;
		border-bottom: 1pt solid black;
	}
	.borderbottom8 {
		border-bottom-width:1px;
		border-bottom: 1pt solid black;
	}
	span.notes p {
		margin-top:0; 
		margin-bottom:0;
	}
	.block th {
		text-transform:uppercase;
	}
</style>
</head>
<body bgcolor="white">
<center><font size="-1">Created using PCGen |EXPORT.VERSION| on |EXPORT.DATE|</font></center><br />
<!-- START Top Character Data -->
<table cellpadding="0" cellspacing="4" border="0" width="100%" summary="Character Info">
	<tr>
	 <td colspan="2" class="h">|NAME| |%FOLLOWEROF|- |FOLLOWEROF| |%|</td>
	 <td colspan="2" class="h">|PLAYERNAME|</td>
	 <td colspan="1" class="h">|ALIGNMENT|</td>
	 <td colspan="1" class="h">|DEITY|</td>
	 <td class="h">|POOL.COST|</td>
	 <td rowspan="6" align="center" width="1%" class="border" class="font10"><a href="#Bio"><img src="file://localhost/|PORTRAIT.THUMB|" height="100%" alt="Click for Bio" border="0" /></a><br /></td>
	</tr>
	<tr>
	 <td colspan="2" class="topline">CHARACTER NAME</td>
	 <td colspan="2" class="topline">PLAYER</td>
	 <td colspan="1" class="topline">ALIGNMENT</td>
	 <td colspan="1" class="topline">DEITY</td>
	 <td class="topline">POINTS</td>
	</tr>
	<tr>
	<@loop from=0 to=pcvar('COUNT[CLASSES]-1') ; class , class_has_next>
	<#if (pcvar(pcstring('CLASS.${class}.LEVEL')) > 0) >
	<td colspan="1" class="h">${pcstring('CLASSABB.${class}')}
	</#if>
	</@loop>
 <!-- <td colspan="1" class="h">${pcstring('CLASSLIST')}	-->
	<#if (pcvar('count("ABILITIES","CATEGORY=Archetype","TYPE=Archetype","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")') > 0)>
	(${pcstring('ABILITYLIST.Archetype.TYPE=Archetype')})
	</#if>
	</td>
<!--	 <td colspan="1" class="h">|CLASSLIST|</td>	-->
	 <td colspan="1" class="h">|EXP.CURRENT|</td>
	 <td colspan="1" class="h">|RACE|</td>
	 <td class="h">|SIZELONG| / |FACE|</td>
	 <td class="h">|HEIGHT|</td>
	 <td class="h">|WEIGHT|</td>
|IIF(VAR.IF(var("COUNT[VISION]")>0;1;0):1)|
	 <td colspan="1" class="h">|VISION|</td>
|ELSE|
	 <td colspan="1" class="h">Normal</td>
|ENDIF|

	</tr>
	<tr>
	 <td colspan="1" class="topline">CLASS</td>
	 <td colspan="1" class="topline">EXPERIENCE</td>
	 <td colspan="1" class="topline">RACE</td>
	 <td class="topline">SIZE / FACE</td>
	 <td class="topline">HEIGHT</td>
	 <td class="topline">WEIGHT</td>
	 <td colspan="1" class="topline">VISION</td>
	</tr>
	<tr>
	 <td class="h">|TOTALLEVELS|</td>
	 <td class="h">|EXP.NEXT|</td>
	 <td class="h">|AGE|</td>
	 <td class="h">|GENDER|</td>
	 <td class="h">|COLOR.EYE|</td>
	 <td colspan="2" class="h">|COLOR.HAIR|, |LENGTH.HAIR|</td>
	</tr>
	<tr>
	 <td class="topline">LEVEL</td>
	 <td class="topline">NEXT LEVEL</td>
	 <td class="topline">AGE</td>
	 <td class="topline">GENDER</td>
	 <td class="topline">EYES</td>
	 <td colspan="2" class="topline">HAIR</td>
	</tr>



</table>
<!-- STOP Top Character Data -->

<table width="100%" border="0" cellspacing="0" cellpadding="0">
	 <tr>
	<td width="200">
	<!-- START Abilities Table -->
	<table width="95%" summary="Stat Block"> 
		<tr>
		<td align="center" width="20%" class="lable">ABILITY<br />NAME</td>
		<td align="center" width="20%" class="lable">ABILITY<br />SCORE</td>
		<td align="center" width="20%" class="lable">ABILITY<br />MODIFIER</td>
		<td align="center" width="20%" class="lable">TEMPORARY<br />SCORE</td>
		<td align="center" width="20%" class="lable">TEMPORARY<br />MODIFIER</td>
		</tr>
|FOR,%stat,0,COUNT[STATS]-1,1,1|
		<tr>
		<td class="ab"><b>|STAT.%stat.NAME|</b><br />
			<span class="ablable">&nbsp;|STAT.%stat.LONGNAME|&nbsp;</span></td>
		<td class="abb">|STAT.%stat.NOTEMP.NOEQUIP|</td>
		<td class="abb">|STAT.%stat.MOD.NOTEMP.NOEQUIP|</td>
		<td class="abt">|STAT.%stat|</td>
		<td class="abt">|STAT.%stat.MOD|</td>
		</tr>
|ENDFOR|
		</table> 
<!-- STOP Abilities Table -->
	</td>
	<td valign="top">&nbsp;
|IIF(VAR.IF(var("UseAlternateDamage")==0;1;0):1)|
<!-- START Hit Point Table -->
	<table summary="Hit Point Table"> 
		<tr>
		<td align="center" width="90"></td>
		<td align="center" width="25"></td>
		<td align="center"></td>
		<td align="center" width="119" class="lable">WOUNDS/CURRENT HP</td>
		<td align="center"></td>
		<td align="center" width="119" class="lable">SUBDUAL DAMAGE</td>
		<td align="center"></td>
		<td align="center" width="119" class="lable">&nbsp;&nbsp;DAMAGE REDUCTION&nbsp;&nbsp;</td>
		<td align="center"></td>
		<td align="center" width="119" class="lable">SPEED</td>
		</tr>
		<tr>
		<td class="ab"><b>HP</b>
			<br /><span class="ablable"> Hit Points</span></td>
		<td align="center" class="abb"><b>|HP|</b></td>
		<td align="center"><br /></td>
		<td align="center" class="border8"><br /></td>
		<td align="center"><br /></td>
		<td align="center" class="border8"><br /></td>
		<td align="center"><br /></td>
		<td align="center" class="abb"><b>&nbsp;|DR|&nbsp;</b></td>
		<td align="center"><br /></td>
		<td align="center" class="border8">
|FOR,%movement,0,COUNT[MOVE]-1,1,1|
|MOVE.%movement.NAME|&nbsp;|MOVE.%movement.RATE|
|IIF(MOVE.%movement.NAME:Fly)|
(|ABILITYALL.Special Ability.HIDDEN.0.TYPE=Maneuverability.ASPECT.Maneuverability|)
|ENDIF|
|ENDFOR|
	</td>
		</tr>
		</table> 
<!-- STOP Hit Point Table -->
|ELSE|
<!-- START Vitality/Wound Point Table-->
		<table summary="Vitality/Wound Point Table"> 
		<tr>
		<td align="center" width="90"></td>
		<td align="center" width="25" valign="bottom"></td>
		<td align="center"></td>
		<td align="center" width="75" class="lable">CURRENT VITALITY</td>
		<td align="center"></td>
		<td align="center" width="75" class="lable">SUBDUAL DAMAGE</td>
		<td align="center"></td>
		<td align="center" width="50"></td>
		<td align="center" width="25" valign="bottom"></td>
		<td align="center"></td>
		<td align="center" width="75" class="lable">CURRENT WP</td>
		<td align="center"></td>
		<td align="center" class="lable">DAMAGE REDUCTION</td>
		<td align="center"></td>
		<td align="center" class="lable">SPEED</td>
		</tr>
		<tr>
		<td class="ab"><b>VP</b>
			<br /><span class="ablable">Vitality</span></td>
		<td align="center" class="abb"><b>|HP|</b></td>
		<td align="center"><br /></td>
		<td align="center" class="border8"></td>
		<td></td>
		<td align="center" class="border8"></td>
		<td align="center"></td>
		<td class="ab"><b>WP</b>
			<br /><span class="ablable">Wound Points</span></td>
		<td align="center" class="abb"><b>|ALTHP|</b></td>
		<td></td>
		<td  class="abb"></td>
		<td></td>
		<td align="center" class="abb"><b>&nbsp;|DR|&nbsp;</b></td>
		<td></td>
		<td align="center" class="border8">
|FOR,%movement,0,COUNT[MOVE]-1,1,1|
|MOVE.%movement.NAME|&nbsp;|MOVE.%movement.RATE|
|IIF(MOVE.%movement.NAME:Fly)|
(|ABILITYALL.Special Ability.HIDDEN.0.TYPE=Maneuverability.ASPECT.Maneuverability|)
|ENDIF|
|ENDFOR|
	</td>
		</tr>
		</table> 
<!-- STOP Vitality/Wound Point Table -->
|ENDIF|
<br />
<!-- Armour Class Table -->
	<table summary="AC Table"> 
		<tr>
		<td width="90" class="ab"><b>AC</b>
			<br /><span class="ablable">&nbsp;Armour Class&nbsp;</span></td>
		<td align="center" class="abb"><b>|AC.Total|</b></td>
		<td align="center" class="sign"><b>:</b></td>
		<td align="center" class="abb"><b>|AC.Touch|</b></td>
		<td align="center" class="sign"><b>:</b></td>
		<td align="center" class="abb"><b>|AC.Flatfooted|</b></td>
		<td align="center" class="sign"><b>=</b></td>
		<td align="center" class="abb"><b>|AC.Base|</b></td>
		<td align="center" class="sign"><b>+</b></td>
		<td align="center" class="abb"><b>|AC.Armor|</b></td>

		<td align="center" class="sign"><b>+</b></td>
		<td align="center" class="abb"><b>|AC.Shield|</b></td>

		<td align="center" class="sign"><b>+</b></td>
		<td align="center" class="abb"><b>|AC.Ability|</b></td>
		<td align="center" class="sign"><b>+</b></td>
		<td align="center" class="abb"><b>|AC.Size|</b></td>
		<td align="center" class="sign"><b>+</b></td>
		<td align="center" class="abb"><b>|AC.NaturalArmor|</b></td>
		<td align="center" class="sign"><b>+</b></td>
		<td align="center" class="abb"><b>|AC.Dodge|</b></td>
		<td align="center" class="sign"><b>+</b></td>
		<td align="center" class="abb"><b>|AC.Deflection|</b></td>
		<td align="center" class="sign"><b>+</b></td>
		<td align="center" class="abb"><b>|AC.Misc|</b></td>
		<td align="center" width="5"></td>
		<td align="center" class="abb"><br /></td>
		<td align="center"></td>
		<td align="center" class="abb"><b>|SPELLFAILURE|</b></td>
		<td align="center"></td>
		<td align="center" class="abb"><b>|ACCHECK|</b></td>
		<td align="center"></td>
		<td align="center" class="abb"><b>|MAXDEX|</b></td>
		<td align="center"></td>
		<td align="center" class="abb"><b>|SR|</b></td>
		<td align="center"></td>
		<td align="center" class="abb"><b>&nbsp;</b></td>
		</tr>
		<tr>
		<td align="center" width="50"></td>
		<td align="center" width="25" valign="top" class="lable"><b>TOTAL</b></td>
		<td align="center"></td>
		<td align="center" width="25" valign="top" class="lable"><b>TOUCH</b></td>
		<td align="center"></td>
		<td align="center" width="25" valign="top" class="lable"><b>FLAT</b></td>
		<td align="center"></td>
		<td align="center" width="25" class="lable">BASE</td>
		<td align="center"></td>
		<td align="center" width="25" class="lable">ARMOR<br />BONUS</td>
		<td align="center"></td>
		<td align="center" width="25" class="lable">SHIELD<br />BONUS</td>
		<td align="center"></td>
		<td align="center" width="25" class="lable">STAT<br />BONUS</td>
		<td align="center"></td>
		<td align="center" width="25" class="lable">SIZE<br />BONUS</td>
		<td align="center"></td>
		<td align="center" width="25" class="lable">NATURAL<br />ARMOR</td>
		<td align="center"></td>
		<td align="center" width="25" class="lable">DODGE<br />BONUS</td>
		<td align="center"></td>
		<td align="center" width="25" class="lable">DEFLECTION<br />BONUS</td>
		<td align="center"></td>
		<td align="center" width="25" class="lable">MISC<br />BONUS</td>
		<td align="center"></td>
		<td align="center" width="25" class="lable">MISS<br />CHANCE</td>
		<td align="center"></td>
		<td align="center" width="25" class="lable">ARCANE<br />FAILURE</td>
		<td align="center"></td>
		<td align="center" width="25" class="lable">ARMOR<br />CHECK</td>
		<td align="center"></td>
		<td align="center" width="25" class="lable">MAX<br />DEX</td>
		<td align="center"></td>
		<td align="center" width="25" class="lable">SPELL<br />RESIST.</td>
		<td align="center"></td>
		<td align="center" width="25" class="lable">TEMP</td>
		</tr>
		</table> 
<!-- STOP AC Table -->
<!-- START Initiative and Base Attack Table -->
	<table summary="Initiative Table">
	<tr>
	<td class="ab" width="90"><b>INITIATIVE</b><br /><span class="ablable"> Modifier</span></td>
	<td class="border10cb">|INITIATIVEMOD|</td>
	<td align="center" class="sign"><b>=</b></td>
	<td class="border10cb">|STAT.1.MOD|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|INITIATIVEBONUS|</td>
	<td width="20" align="center" class="sign"></td>
	<td class="ab"><b>&nbsp;BASE ATTACK BONUS&nbsp;</b></td>
	<td width="94" class="border10cb">|ATTACK.MELEE|</td>
|IIF(VAR.ENCUMBERANCE>0)|
	<td width="20" align="center" class="sign"></td>
	<td class="ab"><b>&nbsp;ENCUMBRANCE&nbsp;</b></td>
|ENDIF|
|IIF(VAR.ENCUMBERANCE:1)|
	<td width="94" class="border10cb">Medium</td>
|ENDIF|
|IIF(VAR.ENCUMBERANCE:2)|
	<td width="94" class="border10cb">Heavy</td>
|ENDIF|
|IIF(VAR.ENCUMBERANCE:3)|
	<td width="94" class="border10cb">Overloaded</td>
|ENDIF|
	</tr>
	<tr>
	<td align="center" width="50" class="sign"></td>
	<td align="center" width="25" valign="top" class="lable">TOTAL</td>
	<td align="center"></td>
	<td align="center" width="25" class="lable">DEX</td>
	<td align="center"></td>
	<td align="center" width="25" class="lable">MISC</td>
	<td rowspan="3" ></td>
	</tr>
	</table>
<!-- STOP Initiative and Base Attack Table -->
	</td>
	 </tr>
</table>


<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
	<td width="55%" valign="top">

<!-- START Saving Throws Table -->
	<table width="100%" summary="Saving Throws">
	<tr>
	<td align="center" class="lable" width="75">SAVING THROWS</td>
	<td align="center" width="25" class="lable">TOTAL</td>
	<td align="center"></td>
	<td align="center" width="25" class="lable">BASE</td>
	<td align="center"></td>
	<td align="center" width="25" class="lable">ABILITY</td>
	<td align="center"></td>
	<td align="center" width="25" class="lable">MAGIC</td>
	<td align="center"></td>
	<td align="center" width="25" class="lable">EPIC</td>
	<td align="center"></td>
	<td align="center" width="25" class="lable">MISC</td>
	<td align="center"></td>
	<td align="center" width="25" class="lable">TEMP</td>

	<td align="left" valign="top" rowspan="4" class="border8"><div align="center" class="lable">CONDITIONNAL SAVE MODIFIERS&nbsp;</div>
|FOR,%ability,0,count("ABILITIES","ASPECT=SaveBonus")-1,1,0|
	|ABILITYALL.ANY.%ability.ASPECT=SaveBonus.ASPECT.SaveBonus| <br >
|ENDFOR|</td>

	</tr>
|FOR,%checks,0,COUNT[CHECKS]-1,1,0|
	<tr>
			<td class="ab"><b>|CHECK.%checks.NAME|</b><span class="ablable"><br />
|IIF(CHECK.%checks.NAME:Fortitude)|
Constitution
|ELSE|
|ENDIF|
|IIF(CHECK.%checks.NAME:Reflex)|
Dexterity
|ELSE|
|ENDIF|
|IIF(CHECK.%checks.NAME:Will)|
Wisdom
|ELSE|
|ENDIF|
</span>
	</td>
	<td class="border10cb">|CHECK.%checks.TOTAL|</td>
	<td align="center" class="sign"><b>=</b></td>
	<td class="border10cb">|CHECK.%checks.BASE|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|CHECK.%checks.STATMOD|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|CHECK.%checks.MAGIC|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|CHECK.%checks.EPIC|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|CHECK.%checks.MISC.NOMAGIC.NOSTAT|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td align="center" class="abt"></td>
	</tr>
|ENDFOR|
	</table>
<!-- STOP Saving Throws Table -->

<!-- START Melee and Range Attack Table -->
	<table width="100%" summary="Melee ~ Ranged Attacks">
	<tr>
	<td align="center" width="75"></td>
	<td align="center" valign="bottom" class="lable">TOTAL</td>
	<td align="center"></td>
	<td align="center" valign="bottom" class="lable">BASE ATTACK</td>
	<td align="center"></td>
	<td align="center" width="25" valign="bottom" class="lable">STAT</td>
	<td align="center"></td>
	<td align="center" width="25" valign="bottom" class="lable">SIZE</td>
	<td align="center"></td>
	<td align="center" width="25" valign="bottom" class="lable">EPIC</td>
	<td align="center"></td>
	<td align="center" width="25" valign="bottom" class="lable">MISC</td>
	<td align="center"></td>
	<td align="center" width="25" valign="bottom" class="lable">TEMP</td>
	</tr>
	<tr>
	<td class="ab"><b>MELEE</b><br /><span class="ablable">ATTACK BONUS</span></td>
	<td class="border10cb">|ATTACK.MELEE.TOTAL|</td>
	<td align="center" class="sign"><b>=</b></td>
	<td class="border10cb">|ATTACK.MELEE|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|ATTACK.MELEE.STAT|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|ATTACK.MELEE.SIZE|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|VAR.charbonusto("COMBAT","EPICAB").INTVAL.SIGN|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|ATTACK.MELEE.MISC|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td align="center" class="abt"></td>
	</tr>
	<tr>
	<td class="ab"><b>RANGED</b><br /><span class="ablable">ATTACK BONUS</span></td>
	<td class="border10cb">|ATTACK.RANGED.TOTAL|</td>
	<td align="center" class="sign"><b>=</b></td>
	<td class="border10cb">|ATTACK.RANGED|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|ATTACK.RANGED.STAT|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|ATTACK.RANGED.SIZE|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|VAR.charbonusto("COMBAT","EPICAB").INTVAL.SIGN|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|ATTACK.RANGED.MISC|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td align="center" class="abt"></td>
	</tr>
|IIF(VAR.UseCombatManueverBonus:1)|
	<tr>
	<td class="ab"><b>CMB</b><br /><span class="ablable">ATTACK BONUS</span></td>
	<td class="border10cb">|VAR.CMB.INTVAL.SIGN|</td>
	<td align="center" class="sign"><b>=</b></td>
	<td class="border10cb">|ATTACK.MELEE.BASE|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|VAR.CMB_STAT.INTVAL.SIGN|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|VAR.CMB_SizeMod.INTVAL.SIGN|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">+0</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|VAR.CMB-ATTACK.MELEE.BASE-VAR.CMB_STAT-VAR.CMB_SizeMod.INTVAL.SIGN|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td align="center" class="abt"></td>
	</tr>
	<tr><td></td></tr>
	</table>
	<table width="100%" summary="CMB block">
|IIF(VAR.IF(VAR("CMD")>0;1;0):1)|
	<tr>
	<td class="ab"><b>CMB</b></td>
	<td class="border10cb">|VAR.CMB_Grapple.INTVAL.SIGN|</td>
	<td class="border10cb">|VAR.CMB_Trip.INTVAL.SIGN|</td>
	<td class="border10cb">|VAR.CMB_Disarm.INTVAL.SIGN|</td>
	<td class="border10cb">|VAR.CMB_Sunder.INTVAL.SIGN|</td>
	<td class="border10cb">|VAR.CMB_BullRush.INTVAL.SIGN|</td>
	<td class="border10cb">|VAR.CMB_Overrun.INTVAL.SIGN|</td>
	</tr>
	<tr>
	<td class="ab"><b>CMD</b></td>
	<td class="border10cb">|VAR.CMD_Grapple.INTVAL|</td>
	<td class="border10cb">
|IIF(VAR.IF(var("CantBeTripped")!=0;1;0):1)|
Immune
|ELSE|
|VAR.CMD_Trip.INTVAL|
|ENDIF|
	</td>
	<td class="border10cb">|VAR.CMD_Disarm.INTVAL|</td>
	<td class="border10cb">|VAR.CMD_Sunder.INTVAL|</td>
	<td class="border10cb">|VAR.CMD_BullRush.INTVAL|</td>
	<td class="border10cb">|VAR.CMD_Overrun.INTVAL|</td>
	</tr>
|ELSE|
	<tr>
	<td class="ab"><b>OFFENSE</b></td>
	<td class="border10cb">|VAR.CMB_Grapple.INTVAL.SIGN|</td>
	<td class="border10cb">|VAR.CMB_Trip.INTVAL.SIGN|</td>
	<td class="border10cb">|VAR.CMB_Disarm.INTVAL.SIGN|</td>
	<td class="border10cb">|VAR.CMB_Sunder.INTVAL.SIGN|</td>
	<td class="border10cb">|VAR.CMB_Bull.INTVAL.SIGN|</td>
	<td class="border10cb">|VAR.CMB_Overrun.INTVAL.SIGN|</td>
	</tr>
	<tr>
	<td class="ab"><b>DEFENSE</b></td>
	<td class="border10cb">|VAR.CMB_Grapple_DEF.INTVAL|</td>
	<td class="border10cb">|VAR.CMB_Trip_DEF.INTVAL|</td>
	<td class="border10cb">|VAR.CMB_Disarm_DEF.INTVAL|</td>
	<td class="border10cb">|VAR.CMB_Sunder_DEF.INTVAL|</td>
	<td class="border10cb">|VAR.CMB_Bull_DEF.INTVAL|</td>
	<td class="border10cb">|VAR.CMB_Overrun_DEF.INTVAL|</td>
	</tr>
|ENDIF|
	<tr>
	<td align="center" width="28%"></td>
	<td align="center" width="12%" valign="top" class="lable">GRAPPLE</td>
	<td align="center" width="12%" valign="top" class="lable">TRIP</td>
	<td align="center" width="12%" valign="top" class="lable">DISARM</td>
	<td align="center" width="12%" valign="top" class="lable">SUNDER</td>
	<td align="center" width="12%" valign="top" class="lable">BULL RUSH</td>
	<td align="center" width="12%" valign="top" class="lable">OVERRUN</td>
	</tr>
		<tr>
	<td align="left" valign="top" colspan="14" class="border8"><div align="center" class="lable">CONDITIONNAL COMBAT MODIFIERS&nbsp;</div>
|FOR,%ability,0,count("ABILITIES","ASPECT=CombatBonus")-1,1,0|
	&nbsp;&nbsp;|ABILITYALL.ANY.%ability.ASPECT=CombatBonus.ASPECT.CombatBonus| <br >
|ENDFOR|
	</td>
	</tr>
	</table>
	<br />
|ELSE|
	<tr>
	<td class="ab"><b>GRAPPLE</b><br /><span class="ablable">ATTACK BONUS</span></td>
	<td class="border10cb">|ATTACK.GRAPPLE.TOTAL|</td>
	<td align="center" class="sign"><b>=</b></td>
	<td class="border10cb">|ATTACK.GRAPPLE|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|ATTACK.GRAPPLE.STAT|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|ATTACK.GRAPPLE.SIZE|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|ATTACK.GRAPPLE.EPIC|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td class="border10cb">|ATTACK.GRAPPLE.MISC|</td>
	<td align="center" class="sign"><b>+</b></td>
	<td align="center" class="abt"></td>
	</tr>
	<tr><td></td></tr>
	<tr>
	<td align="left" valign="top" colspan="14" class="border8"><div align="center" class="lable">CONDITIONNAL COMBAT MODIFIERS&nbsp;</div>
|FOR,%ability,0,count("ABILITIES","ASPECT=CombatBonus")-1,1,0|
	&nbsp;&nbsp;|ABILITYALL.ANY.%ability.ASPECT=CombatBonus.ASPECT.CombatBonus| <br >
|ENDFOR|
	</td>
	</tr>
	</table>
	<br />
|ENDIF|
<!-- STOP Melee and Range Attack Table -->
<!-- START Martial Arts Table -->
|IIF(VAR.UseMartialArts:1)|
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Unarmed Attack">
	<tr>
			<td align="center" height="25" bgcolor="black" rowspan="2" width="40%" class="ab"><b>Martial Arts</b></td>
			<td align="center" bgcolor="black" width="15%" class="ablableb" height="20">TOTAL ATTACK BONUS</td>
			<td align="center" bgcolor="black" width="15%" class="ablableb">DAMAGE</td>
			<td align="center" bgcolor="black" width="15%" class="ablableb">CRITICAL</td>
			<td align="center" bgcolor="black" width="15%" class="ablableb">REACH</td>
	</tr>
	<tr style="font-weight: bold;">
			<td class="border10c" height="20">|WEAPONH.TOTALHIT|</td>
|IIF(VAR.MartialArtsBonusDamage<0)|
		<td class="border10c">|VAR.MartialArtsDie.INTVAL|d|VAR.MartialArtsDieSize.INTVAL|-|VAR.MartialArtsBonusDamage.INTVAL|</td>
|ELSE|
		<td class="border10c">|VAR.MartialArtsDie.INTVAL|d|VAR.MartialArtsDieSize.INTVAL|+|VAR.MartialArtsBonusDamage.INTVAL|</td>
|ENDIF|
		<td class="border10c">|WEAPONH.CRIT|/&#215;|WEAPONH.MULT|</td>
			<td class="border10c">|REACH|</td>
	</tr>
	</table>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Unarmed Attack - Special Properties">
		<tr>
			<td align="center" bgcolor="black" width="25%" class="ablableb">Special Properties</td>

			<td class="border10c" >
|FOR,%NaturalAttack,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=UnarmedDisplay")-1,1,0|
			|ABILITYALL.Special Ability.%NaturalAttack.TYPE=UnarmedDisplay.ASPECT.UnarmedNotes|
|ENDFOR|</td>
		</tr>
	</table>
	<br />
<!-- STOP Martial Arts Table -->
|ELSE|
<!-- START Unarmed Attack Table -->
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Unarmed Attack">
		<tr>
			<td align="center" height="25" bgcolor="black" rowspan="2" width="40%" class="ab"><b>UNARMED</b></td>
			<td align="center" bgcolor="black" width="15%" class="ablableb" height="20">TOTAL ATTACK BONUS</td>
			<td align="center" bgcolor="black" width="15%" class="ablableb">DAMAGE</td>
			<td align="center" bgcolor="black" width="15%" class="ablableb">CRITICAL</td>
			<td align="center" bgcolor="black" width="15%" class="ablableb">REACH</td>
		</tr>
		<tr style="font-weight: bold;">
			<td class="border10c" height="20">|WEAPONH.TOTALHIT|</td>
			<td class="border10c">|WEAPONH.DAMAGE|</td>
			<td class="border10c">|WEAPONH.CRIT|/&#215;|WEAPONH.MULT|</td>
			<td class="border10c">|REACH|</td>
		</tr>
	</table>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Unarmed Attack - Special Properties">
		<tr>
			<td align="center" bgcolor="black" width="25%" class="ablableb">Special Properties</td>
			<td class="border10c" >
|FOR,%NaturalAttack,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=UnarmedDisplay")-1,1,0|
			|ABILITYALL.Special Ability.%NaturalAttack.TYPE=UnarmedDisplay.ASPECT.UnarmedNotes|
|ENDFOR|</td>
		</tr>
	</table>
	<br />
<!-- STOP Unarmed Attack Table -->
|ENDIF|

<!-- START Spirit Weapon Melee -->
|IIF(VAR.UseSpiritWeaponMelee:1)|
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Spirit Weapon Melee">
	<tr>
			<td align="center" height="25" bgcolor="black" rowspan="2" width="40%" class="ab"><b>Spirit Weapon - Melee</b></td>
			<td align="center" bgcolor="black" width="15%" class="ablableb" height="20">TOTAL ATTACK BONUS</td>
			<td align="center" bgcolor="black" width="15%" class="ablableb">DAMAGE</td>
			<td align="center" bgcolor="black" width="15%" class="ablableb">CRITICAL</td>
			<td align="center" bgcolor="black" width="15%" class="ablableb">REACH</td>
	</tr>
	<tr>
			<td class="border10c" height="20">|VAR.SpiritWeaponMeleeToHit.INTVAL|</td>
|IIF(VAR.SpiritWeaponMeleeBonusDamage<0)|
	<td class="border10c">|VAR.SpiritWeaponMeleeDie.INTVAL|d|VAR.SpiritWeaponMeleeDieSize.INTVAL|-|VAR.SpiritWeaponMeleeBonusDamage.INTVAL|</td>
|ELSE|
	<td class="border10c">|VAR.SpiritWeaponMeleeDie.INTVAL|d|VAR.SpiritWeaponMeleeDieSize.INTVAL|+|VAR.SpiritWeaponMeleeBonusDamage.INTVAL|</td>
|ENDIF|
	<td class="border10c">|VAR.SpiritWeaponMeleeCritRange.INTVAL|/&#215;|VAR.SpiritWeaponMeleeCritMult.INTVAL|</td>
			<td class="border10c">|REACH|</td>
	</tr>
	</table>
	<br />
|ENDIF|
<!-- STOP Spirit Weapon Melee -->
<!-- START Spirit Weapon Ranged -->
|IIF(VAR.UseSpiritWeaponRanged:1)|
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Spirit Weapon Ranged">
	<tr>
			<td align="center" height="25" bgcolor="black" rowspan="2" width="40%" class="ab"><b>Spirit Weapon - Range</b></td>
			<td align="center" bgcolor="black" width="15%" class="ablableb" height="20">TOTAL ATTACK BONUS</td>
			<td align="center" bgcolor="black" width="15%" class="ablableb">DAMAGE</td>
			<td align="center" bgcolor="black" width="15%" class="ablableb">CRITICAL</td>
			<td align="center" bgcolor="black" width="15%" class="ablableb">RANGE</td>
	</tr>
	<tr>
			<td class="border10c" height="20">|VAR.SpiritWeaponRangedToHit.INTVAL|</td>
|IIF(VAR.SpiritWeaponRangedBonusDamage<0)|
	<td class="border10c">|VAR.SpiritWeaponRangedDie.INTVAL|d|VAR.SpiritWeaponRangedDieSize.INTVAL|-|VAR.SpiritWeaponRangedBonusDamage.INTVAL|</td>
|ELSE|
	<td class="border10c">|VAR.SpiritWeaponRangedDie.INTVAL|d|VAR.SpiritWeaponRangedDieSize.INTVAL|+|VAR.SpiritWeaponRangedBonusDamage.INTVAL|</td>
|ENDIF|
	<td class="border10c">|VAR.SpiritWeaponRangedCritRange.INTVAL|/&#215;|VAR.SpiritWeaponRangedCritMult.INTVAL|</td>
			<td class="border10c">|VAR.SpiritWeaponRangedRange.INTVAL|</td>
	</tr>
	</table>
	<br />
|ENDIF|
<!-- STOP Spirit Weapon Ranged -->





<!-- START Natural Attack Block -->
|IIF(count("ABILITIES";"CATEGORY=Natural Attack";"TYPE=NaturalAttack";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|

|FOR,%NaturalAttack,0,count("ABILITIES","CATEGORY=Natural Attack","TYPE=NaturalAttack")-1,1,0|
<!-->		<type>|ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.ASPECT.NaturalAttackType|</type>	-->
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Natural Attack Block">
		<tr>
			<td align="center" height="25" bgcolor="black" rowspan="2" width="40%" class="ab"><b>|ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.ASPECT.NaturalAttackName|</b></td>
			<td align="center" bgcolor="black" width="15%" class="ablableb" height="20">TOTAL ATTACK BONUS</td>
			<td align="center" bgcolor="black" width="15%" class="ablableb">DAMAGE</td>
			<td align="center" bgcolor="black" width="15%" class="ablableb">CRIT / MULT</td>
|IIF(ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.HASASPECT.NaturalAttackRange:Y)|
			<td align="center" bgcolor="black" width="15%" class="ablableb">RANGE</td>
|ELSE|
			<td align="center" bgcolor="black" width="15%" class="ablableb">REACH</td>
|ENDIF|
		</tr>
		<tr>
			<td class="border10c" height="20">|ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.ASPECT.NaturalAttackToHit|</td>
			<td class="border10c">|ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.ASPECT.NaturalAttackDamage||ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.ASPECT.NaturalAttackDamageBonus.SIGN|</td>
<!-->			<td class="border10c">|ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.ASPECT.NaturalAttackDamage||ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.ASPECT.NaturalAttackDamageBonus.SIGN|</td>
-->
			<td class="border10c">|ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.ASPECT.NaturalAttackThreatRange||ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.ASPECT.NaturalAttackCritMult|</td>
|IIF(ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.HASASPECT.NaturalAttackRange:Y)|
			<td class="border10c">|ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.ASPECT.NaturalAttackRange|</td>
|ELSE|
			<td class="border10c">|ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.ASPECT.NaturalAttackReach|</td>
|ENDIF|
		</tr>
|IIF(ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.DESC:YES)|
		<tr>
			<td align="center" bgcolor="black" colspan="1" width="15%" class="ablable" height="20">Special Properties</td>
			<td colspan="4" class="border10">|ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.ASPECT.NaturalAttackNotes||ABILITYALL.Natural Attack.%NaturalAttack.TYPE=NaturalAttack.DESC|</td>
		</tr>
|ELSE|
|ENDIF|
	</table>
	<br />
|ENDFOR|
|ENDIF|
<!-- STOP Natural Attack Block -->



<!-- START Weapon Table -->
|FOR,%weap,0,2,1,1|
	<table cellpadding="0" width="100%" cellspacing="0" border="0" summary="Weapon Table">
|IIF(WEAPON.%weap.CATEGORY:BOTH)|
|IIF(WEAPON.%weap.CATEGORY:Ranged)|
	<tr>
	<td align="left" height="15" bgcolor="black" width="8%" class="ablableb">&nbsp;&nbsp;Range</td>
|FOR,%range,0,4,1,0|
	<td width="18%" align="center" bgcolor="black" class="ablable"><b>|WEAPON.%weap.RANGELIST.%range|<br /></b></td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="border" class="ablableb">&nbsp;Bonus</td>
|FOR,%range1,0,4,1,0|
	<td class="border10c"><b>|WEAPON.%weap.RANGELIST.%range1.TOTALHIT|<br /></b></td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Dam</td>
|FOR,%range2,0,4,1,0|
	<td class="border10cb">|WEAPON.%weap.RANGELIST.%range2.DAMAGE|</td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" colspan="2" class="ablable"><b>&nbsp;Ammunition Used<br /></b></td>
	<td valign="bottom" class="border10c" colspan="5">&#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744;</td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" colspan="2" class="ablable"><b>&nbsp;Special Properties<br /></b></td>
	<td align="left" colspan="5" class="border10">&nbsp;|WEAPON.%weap.SPROP|<br /></td>
	</tr>
	</table>
	<span class="font2"><br /></span>
|ELSE|
	<tr>
	<td align="center" bgcolor="black" rowspan="2" width="40%" class="ab"><b>|WEAPON.%weap.NAME|<br /></b></td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">HAND</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">TYPE</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">SIZE</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">CRITICAL</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">REACH</td>
	</tr>
	<tr>
	<td class="border10c"><b>|WEAPON.%weap.HAND|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TYPE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.SIZE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.CRIT|/&#215;|WEAPON.%weap.MULT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.REACH||WEAPON.%weap.REACHUNIT|<br /></b></td>
	</tr>
	</table>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Weapon Table">
	<tr>
	<td align="center" height="15" bgcolor="black" width="8%"></td>
	<td align="center" height="15" bgcolor="black" width="16%" class="ablableb">1H-P</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">1H-O</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">2H</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">2W-P-(OH)</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">2W-P-(OL)</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">2W-OH</td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="border"><b>&nbsp;Bonus</b></td>
	<td class="border10c"><b>|WEAPON.%weap.BASEHIT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.OHHIT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.THHIT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TWPHITH|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TWPHITL|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TWOHIT|<br /></b></td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Dam</td>
	<td class="border10c"><b>|WEAPON.%weap.BASICDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.OHDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.THDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.BASICDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.BASICDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.OHDAMAGE|<br /></b></td>
	</tr>
	</table>
|ENDIF|
|ELSE|
|IIF(WEAPON.%weap.CATEGORY:Ranged)|
	<tr>
	<td align="center" bgcolor="black" rowspan="2" width="40%" class="ab"><b>|WEAPON.%weap.NAME|<br /></b></td>
	<td align="center" bgcolor="black" width="15%" height="15" class="ablableb">HAND</td>
	<td align="center" bgcolor="black" width="15%" height="15" class="ablableb">TYPE</td>
	<td align="center" bgcolor="black" width="15%" height="15" class="ablableb">SIZE</td>
	<td align="center" bgcolor="black" width="15%" height="15" class="ablableb">CRITICAL</td>
	</tr>
	<tr>
	<td class="border10c"><b>|WEAPON.%weap.HAND|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TYPE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.SIZE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.CRIT|/&#215;|WEAPON.%weap.MULT|<br /></b></td>
	</tr>
	</table>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Weapon Table">
|IIF(WEAPON.%weap.CONTENTS:0)|
	<tr>
	<td align="left" height="15" bgcolor="black" width="8%" class="ablableb">&nbsp;&nbsp;Range</td>
|FOR,%range,0,4,1,0|
	<td width="18%" align="center" bgcolor="black" class="ablable"><b>|WEAPON.%weap.RANGELIST.%range|<br /></b></td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Bonus</td>
|FOR,%range1,0,4,1,0|
	<td class="border10c"><b>|WEAPON.%weap.RANGELIST.%range1.TOTALHIT|<br /></b></td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Dam</td>
|FOR,%range2,0,4,1,0|
	<td class="border10cb">|WEAPON.%weap.RANGELIST.%range2.DAMAGE|</td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="border" colspan="2" class="ablable"><b>&nbsp;Ammunition Used<br /></b></td>
	<td valign="bottom" class="border10c" colspan="5">&#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744;</td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" colspan="2" class="ablable"><b>&nbsp;Special Properties<br /></b></td>
	<td colspan="5" class="border10">&nbsp;|WEAPON.%weap.SPROP|<br /></td>
	</tr>
	</table>
	<span class="font2"><br /></span>
|ELSE|
|FOR,%ammo,0,WEAPON.%weap.CONTENTS-1,1,0|
	<tr>
	<td colspan="6" align="left" height="15" bgcolor="black" width="8%" class="ablableb">&nbsp;AMMUNITION:  |WEAPON.%weap.CONTENTS.%ammo|
|IIF(WEAPON.%weap.CONTENTS.%ammo.SPROP: )|
(|WEAPON.%weap.CONTENTS.%ammo.SPROP|)
|ENDIF|
	</td>
	</tr>
	<tr>
	<td align="left" height="15" bgcolor="black" width="8%" class="ablableb">&nbsp;Range</td>
|FOR,%range,0,4,1,0|
	<td width="18%" align="center" bgcolor="black" class="border" class="ablable"><b>|WEAPON.%weap.RANGELIST.%range|<br /></b></td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="border" class="ablableb">&nbsp;Bonus</td>
|FOR,%range1,0,4,1,0|
	<td class="border10c"><b>|WEAPON.%weap.RANGELIST.%range1.CONTENTS.%ammo.TOTALHIT|<br /></b></td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="border" class="ablableb">&nbsp;Dam</td>
|FOR,%range2,0,4,1,0|
	<td class="border10cb">|WEAPON.%weap.RANGELIST.%range2.CONTENTS.%ammo.DAMAGE|</td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="border" colspan="2" class="ablable"><b>&nbsp;Ammunition Used<br /></b></td>
	<td valign="bottom" colspan="5" class="border10c">&#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744;</td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" colspan="2" class="ablable"><b>&nbsp;Special Properties<br /></b></td>
	<td colspan="5" class="border10">&nbsp;|WEAPON.%weap.SPROP|<br /></td>
	</tr>
	</table>
	<br />
|ENDIF|
|ELSE|
|IIF(WEAPON.%weap.ISTYPE.Double.OR.WEAPON.%weap.CATEGORY:Non-Standard-Melee.OR.WEAPON.%weap.CATEGORY:NATURAL)|
	<tr>
	<td align="center" height="15" bgcolor="black" rowspan="2" width="40%" class="ab"><b>|WEAPON.%weap.NAME|<br /></b></td>
	<td align="center" bgcolor="black" width="20%" height="15" class="ablableb">TOTAL ATTACK BONUS</td>
	<td align="center" bgcolor="black" width="20%" height="15" class="ablableb">DAMAGE</td>
	<td align="center" bgcolor="black" width="20%" height="15" class="ablableb">CRITICAL</td>
	</tr>
	<tr>
	<td class="border10c"><b>|WEAPON.%weap.TOTALHIT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.DAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.CRIT|/&#215;|WEAPON.%weap.MULT|<br /></b></td>
	</tr>
	</table>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Weapon Table">
	<tr>
	<td align="center" height="15" bgcolor="black" width="15%" class="ablableb">HAND</td>
	<td align="center" height="15" bgcolor="black" width="15%" class="ablableb">RANGE</td>
	<td align="center" bgcolor="black" width="15%" height="15" class="ablableb">TYPE</td>
	<td align="center" bgcolor="black" width="15%" height="15" class="ablableb">SIZE</td>
	<td align="center" bgcolor="black" width="40%" height="15" class="ablableb">SPECIAL PROPERTIES</td>
	</tr>
	<tr>
	<td class="border10c"><b>|WEAPON.%weap.HAND|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.RANGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TYPE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.SIZE|<br /></b></td>
	<td class="border10c">&nbsp;|WEAPON.%weap.SPROP|<br /></td>
	</tr>
	</table>
	<br />
|ELSE|
	<tr>
	<td align="center" bgcolor="black" rowspan="2" width="40%" class="ab"><b>|WEAPON.%weap.NAME|<br /></b></td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">HAND</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">TYPE</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">SIZE</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">CRITICAL</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">REACH</td>
	</tr>
	<tr>
	<td class="border10c"><b>|WEAPON.%weap.HAND|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TYPE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.SIZE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.CRIT|/&#215;|WEAPON.%weap.MULT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.REACH||WEAPON.%weap.REACHUNIT|<br /></b></td>
	</tr>
	</table>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Weapon Table">
	<tr>
	<td align="center" height="15" bgcolor="black" width="8%"></td>
	<td align="center" height="15" bgcolor="black" width="16%" class="ablableb">1H-P</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">1H-O</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">2H</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">2W-P-(OH)</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">2W-P-(OL)</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">2W-OH</td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Bonus</td>
	<td class="border10c"><b>|WEAPON.%weap.BASEHIT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.OHHIT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.THHIT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TWPHITH|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TWPHITL|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TWOHIT|<br /></b></td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Dam</td>
	<td class="border10c"><b>|WEAPON.%weap.BASICDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.OHDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.THDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.BASICDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.BASICDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.OHDAMAGE|<br /></b></td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" colspan="2" class="ablableb">&nbsp;Special Properties</td>
	<td colspan="5" class="border10">&nbsp;|WEAPON.%weap.SPROP|<br /></td>
	</tr>
	</table>
	<br />
|ENDIF|
|ENDIF|
|ENDIF|
|ENDFOR|
|%WEAPON.3|
|FOR,%weap,3,3,1,1|
|IIF(WEAPON.%weap.CATEGORY:BOTH)|
|IIF(WEAPON.%weap.CATEGORY:Ranged)|
	<table cellpadding="0" width="100%" cellspacing="0" border="0" summary="Weapon Table">
	<tr>
	<td align="left" height="15" bgcolor="black" width="10%" class="ablableb">&nbsp;&nbsp;Range</td>
|FOR,%range,0,4,1,0|
	<td width="18%" align="center" bgcolor="black" class="ablable"><b>|WEAPON.%weap.RANGELIST.%range|<br /></b></td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Bonus</td>
|FOR,%range1,0,4,1,0|
	<td class="border10c"><b>|WEAPON.%weap.RANGELIST.%range1.TOTALHIT|<br /></b></td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Dam</td>
|FOR,%range2,0,4,1,0|
	<td class="border10cb">|WEAPON.%weap.RANGELIST.%range2.DAMAGE|</td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="border" colspan="2" class="ablable"><b>&nbsp;Ammunition Used<br /></b></td>
	<td valign="bottom" colspan="5" class="border10c">&#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744;</td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" colspan="2" class="ablable"><b>&nbsp;Special Properties<br /></b></td>
	<td colspan="5" class="border10">&nbsp;|WEAPON.%weap.SPROP|<br /></td>
	</tr>
	</table>
|ENDIF|
|ENDIF|
|ENDFOR|
|%|
	<table cellpadding="0" width="100%" cellspacing="0" border="0" summary="Weapon Abbreviations">
	<tr>
	
	<td class="key"><b>1H-P:</b> One handed, primary hand. <b>1H-O:</b> One 
	handed, off hand. <b>2H:</b> Two handed. <b>2W-P-(OH):</b> 2 weapons, 
	primary hand (off hand weapon is heavy). <b>2W-P-(OL):</b> 2 weapons, 
	primary hand (off hand weapon is light). <b>2W-OH:</b>2 weapons, off 
	hand.</td>
	</tr>
	</table>
<!-- STOP Weapon Table -->

<!-- START Armor Table -->
|IIF(AC.Armor>0)|
<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Armor Table">
	<tr>
		
	<td align="center" bgcolor="black" width="40%" class="ab" rowspan="2"><b>|ARMOR.EQUIPPED.0.NAME|<br />
	</b></td>
		
	<td align="center" bgcolor="black" width="20%" class="ablable" height="20">TYPE</td>
		
	<td align="center" bgcolor="black" width="20%" class="ablable">ARMOR BONUS</td>
		
	<td align="center" bgcolor="black" width="20%" class="ablable">MAX DEX BONUS</td>
	</tr>
	<tr>
		
	<td class="border10cb" height="20">|ARMOR.EQUIPPED.0.TYPE|</td>
		
	<td class="border10cb">|ARMOR.EQUIPPED.0.TOTALAC|</td>
		
	<td class="border10cb">|ARMOR.EQUIPPED.0.MAXDEX|</td>
	</tr>
</table>

<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Armor Table">
	<tr>
		
	<td align="center" bgcolor="black" class="ablable" height="20">CHECK PENALTY</td>
		
	<td align="center" bgcolor="black" class="ablable">SPELL FAILURE</td>
		
	<td align="center" bgcolor="black" class="ablable">SPECIAL PROPERTIES</td>
	</tr>
	<tr>
		<td class="border10cb" height="20">|ARMOR.EQUIPPED.0.ACCHECK|</td>
		<td class="border10cb">|ARMOR.EQUIPPED.0.SPELLFAIL|</td>
		<td class="border10cb">|ARMOR.EQUIPPED.0.SPROP|</td>
	</tr>
</table>
|ENDIF|
<br />
<!-- STOP Armor Table -->

<!-- START Shield Table -->
|IIF(AC.Shield>0)|
<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Armor Table">
	<tr>
		<td align="center" bgcolor="black" width="40%" class="ab" rowspan="2"><b>|ARMOR.SHIELD.EQUIPPED.0.NAME|<br /></b></td>
		
	<td align="center" bgcolor="black" width="20%" class="ablable" height="20">TYPE</td>
		
	<td align="center" bgcolor="black" width="20%" class="ablable">ARMOR BONUS</td>
		
	<td align="center" bgcolor="black" width="20%" class="ablable">MAX DEX BONUS</td>
	</tr>
	<tr>
		
	<td class="border10cb" height="20">|ARMOR.SHIELD.EQUIPPED.0.TYPE|</td>
	<td class="border10cb">|ARMOR.SHIELD.EQUIPPED.0.TOTALAC|</td>
	<td class="border10cb">|ARMOR.SHIELD.EQUIPPED.0.MAXDEX|</td>
	</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Armor Table">
	<tr>
		
	<td align="center" bgcolor="black" class="ablable" height="20">CHECK PENALTY</td>
		
	<td align="center" bgcolor="black" class="ablable">SPELL FAILURE</td>
		
	<td align="center" bgcolor="black" class="ablable">SPECIAL PROPERTIES</td>
	</tr>
	<tr>
		<td class="border10cb" height="20">|ARMOR.SHIELD.EQUIPPED.0.ACCHECK|</td>
		<td class="border10cb">|ARMOR.SHIELD.EQUIPPED.0.SPELLFAIL|</td>
		<td class="border10cb">|ARMOR.SHIELD.EQUIPPED.0.SPROP|</td>
	</tr>
</table>
|ENDIF|
<br />
<!-- STOP Shield Table -->
</td>
<td width="45%" valign="top">

<!-- START PSI Power Points Table -->
|%VAR.TOTALPOWERPOINTS.GTEQ.1|
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Power Point Table">
	<tr>
	<td colspan="6" bgcolor="black" align="center" class="abb">PSI POWER POINTS</td>
	</tr>
	<tr>
	<td bgcolor="#000000" class="ablable">&nbsp;Base PP</td>
	<td bgcolor="#FFFFFF" class="border10" >|VAR.BASEPOWERPOINTS.INTVAL|</td>
	<td bgcolor="#000000" class="ablable">&nbsp;Bonus PP</td>
	<td bgcolor="#FFFFFF" class="border10">|VAR.BONUSPOWERPOINTS.INTVAL|</td>
	<td bgcolor="#000000" class="ablable">&nbsp;Total PP</td>
	<td bgcolor="#FFFFFF" class="border10" >|VAR.TOTALPOWERPOINTS.INTVAL|</td>
	</tr>
	<tr>
	<td>&nbsp;</td>
	</tr>
	</table>
|%|
<!-- STOP PSI Power Points Table -->

<!-- START Skills Table -->
<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Skills Table">
	<tr>
		<td height="30" bgcolor="black"></td>
		<th height="30" class="ab">SKILLS</th>
		<td colspan="4" height="30" bgcolor="black" align="center"></td>
		<td height="30" bgcolor="black" align="right" ></td>
		<td height="30" class="ab">MAX<br />RANKS</td>
		<td colspan="2" height="30" align="center" class="skl"><b>|MAXSKILLLEVEL|/|MAXCCSKILLLEVEL|</b></td>
	</tr>
	<tr>
		<td colspan="2" align="center" width="50%" class="border6">SKILL NAME</td>
		<td align="center" width="10%" class="border6">ABILITY</td>
		<td align="center" width="10%" colspan="1" class="border6">SKILL<br />MODIFIER</td>
		<td align="center" width="10%" colspan="2" class="border6">ABILITY<br />MODIFIER</td>
		<td align="center" width="10%" colspan="2" class="border6">RANKS</td>
		<td align="center" width="10%" colspan="2" class="border6">MISC<br />MODIFIER</td>
	</tr>
|FOR,%skill,0,${count("SKILLSIT", "VIEW=EXPORT")-1},1,0|
|OIF(EVEN:%skill,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
		<td align="center" class="skill" width="5%" height="15">|OIF(SKILLSIT.%skill.UNTRAINED,&#9670;,)|</td>
		<td align="left" class="skill">|SKILLSIT.%skill|</td>
		<td align="center" class="skill">|SKILLSIT.%skill.ABILITY|</td>
		<td align="center" class="skillValue"><b>|SKILLSIT.%skill.TOTAL|</b></td>
		<td align="center" class="sign">=</td>
		<td align="center" class="skillValue">|SKILLSIT.%skill.ABMOD|</td>
		<td align="center" class="sign">+</td>
		<td align="center" class="skillValue" >|TEXT.REPLACEFIRST{\.0,}.SKILLSIT.%skill.RANK|</td>
		<td align="center" class="sign">+</td>
		<td align="center" class="skillValue">|SKILLSIT.%skill.MISC|</td>
	</tr>

|ENDFOR|

</table>
<!-- STOP Skills Table -->
	<span class="skill">&#9670; = Useable Untrained</span>

	</td>
	</tr>
	<tr>
	<td align="left" valign="top" colspan="10" class="border8"><div align="center" class="lable">CONDITIONNAL SKILL MODIFIERS&nbsp;</div>
|FOR,%ability,0,count("ABILITIES","ASPECT=SkillBonus")-1,1,0|
	&nbsp;&nbsp;|ABILITYALL.ANY.%ability.ASPECT=SkillBonus.ASPECT.SkillBonus| <br >
|ENDFOR|
	</td>
	</tr>

</table>


<table width="100%" border="0" summary="Page 2 Master Table"> <!-- Master Page Table -->
	<tr>
	<td colspan="2" width="100%" valign="top">
<!-- START Equipment Table -->
	<table width="100%" cellspacing="0" cellpadding="0" border="0" summary="Master Equipment Table"> <!-- Master Equipment Table -->
	<tr>
	<th height="20" colspan="10" align="center" bgcolor="black" class="ab">EQUIPMENT</th>
	</tr>
	<tr>
	<td width="50%" valign="top">
	<table width="100%" cellspacing="0" cellpadding="0" border="0" summary="Equipment Table Left Column"> <!-- Equipment Table left pane -->
	<tr>
		<td valign="top" width="70%" class="border10"><b>ITEM</b></td>
		<td valign="top" width="12%" class="border10cb">LOCATION</td>
		<td valign="top" width="6%" class="border10cb">QTY</td>
		<td valign="top" width="6%" class="border10cb">WT.</td>
		<td valign="top" width="6%" class="border10cb">COST</td>
	</tr>
|FOR,%equip1,0,(COUNT[EQUIPMENT.Not.Coin.NOT.Gem]-1)/2,1,0|
|OIF(EVEN:%equip1,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
|IIF(EQ.Not.Coin.NOT.Gem.%equip1.TYPE:Magic)|
		<td valign="top" class="border10">&nbsp;<b>|EQ.Not.Coin.NOT.Gem.%equip1.NAME|</b>
|ELSE|
		<td valign="top" class="border10">&nbsp;|EQ.Not.Coin.NOT.Gem.%equip1.NAME|
|ENDIF|
|IIF(VAR.IF(VAR("EQ.MERGELOC.Not.Coin.NOT.Gem.%equip1.CHARGES")>0;1;0):1)|
		<span class="border6">&nbsp;(|EQ.MERGELOC.Not.Coin.NOT.Gem.%equip1.CHARGES| Charges)</span>
|ENDIF|
<br />
|IIF(EQ.Not.Coin.NOT.Gem.%equip1.SPROP: )|
		<span class="border6">|EQ.Not.Coin.NOT.Gem.%equip1.SPROP|</span><br />
|ENDIF|
|IIF(EQ.MERGELOC.Not.Coin.NOT.Gem.%equip1.NOTE: )|
		<span class="border6"><i>|EQ.MERGELOC.Not.Coin.NOT.Gem.%equip1.NOTE|</i></span><br />
|ENDIF|
		</td>
		<td valign="top" class="border10c">|EQ.Not.Coin.NOT.Gem.%equip1.LOCATION|<br /></td>
		<td valign="top" class="border10c">|EQ.Not.Coin.NOT.Gem.%equip1.QTY|<br /></td>
		<td valign="top" class="border10c">|EQ.Not.Coin.NOT.Gem.%equip1.WT|<br /></td>
		<td valign="top" class="border10c">|EQ.Not.Coin.NOT.Gem.%equip1.COST|<br /></td>
	</tr>
|ENDFOR|
	</table>
	</td>
	<td width="50%" valign="top">
	<table width="100%" cellspacing="0" cellpadding="0" border="0" summary="Equipment Table Left Column"> <!-- Equipment Table right pane -->
	<tr>
		<td valign="top" width="70%" class="border10"><b>ITEM</b></td>
		<td valign="top" width="12%" class="border10cb">LOCATION</td>
		<td valign="top" width="6%" class="border10cb">QTY</td>
		<td valign="top" width="6%" class="border10cb">WT.</td>
		<td valign="top" width="6%" class="border10cb">COST</td>
	</tr>
|FOR,%equip2,((COUNT[EQUIPMENT.Not.Coin.NOT.Gem]-1)/2)+1,COUNT[EQUIPMENT.Not.Coin.NOT.Gem]-1,1,0|
|OIF(EVEN:%equip2,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
|IIF(EQ.Not.Coin.NOT.Gem.%equip2.TYPE:Magic)|
	<td valign="top" class="border10">&nbsp;<b>|EQ.Not.Coin.NOT.Gem.%equip2.NAME|</b>
|ELSE|
	<td valign="top" class="border10">&nbsp;|EQ.Not.Coin.NOT.Gem.%equip2.NAME|
|ENDIF|
|IIF(VAR.IF(VAR("EQ.MERGELOC.Not.Coin.NOT.Gem.%equip2.CHARGES")>0;1;0):1)|
	<span class="border8">&nbsp;(|EQ.MERGELOC.Not.Coin.NOT.Gem.%equip2.CHARGES| Charges)</span>
|ENDIF|
<br />
|IIF(EQ.Not.Coin.NOT.Gem.%equip2.SPROP: )|
	<span class="border8">(|EQ.Not.Coin.NOT.Gem.%equip2.SPROP|)</span><br />
|ENDIF|
|IIF(EQ.MERGELOC.Not.Coin.NOT.Gem.%equip2.NOTE: )|
	<span class="border8">(|EQ.MERGELOC.Not.Coin.NOT.Gem.%equip2.NOTE|)</span><br />
|ENDIF|
	</td>
	<td valign="top" class="border10c">|EQ.Not.Coin.NOT.Gem.%equip2.LOCATION|<br /></td>
	<td valign="top" class="border10c">|EQ.Not.Coin.NOT.Gem.%equip2.QTY|<br /></td>
	<td valign="top" class="border10c">|EQ.Not.Coin.NOT.Gem.%equip2.WT|<br /></td>
	<td valign="top" class="border10c">|EQ.Not.Coin.NOT.Gem.%equip2.COST|<br /></td>
	</tr>
|ENDFOR|
	<tr>
		<td valign="top" width="41%" class="border" align="right" colspan="1" class="border10">TOTAL WEIGHT CARRIED/VALUE&nbsp;&nbsp;</td>
		<td valign="top" width="3%" class="border" colspan="2" nowrap class="border10c">|TOTAL.WEIGHT|</td>
		<td valign="top" width="3%" class="border" colspan="2" nowrap class="border10c">|TOTAL.VALUE|</td>
		</tr>
	</table>
	</td>
	</tr>
	</table>
	<br />
<!-- STOP Equipment Table -->
	 </tr>
	 <tr>
	<td width="50%" valign="top">
<!-- START Weight Table -->
	<table width="100%" cellspacing="0" cellpadding="3" summary="Weight Allowance Table" class="block">
	<tr>
	<th colspan="6" class="ab">Weight Allowance</th>
	</tr>
	<tr>
	<td valign="top" class="border10" align="right"><b>Light</b></td>
	<td valign="top" class="border10">|WEIGHT.LIGHT|</td>
	<td valign="top" class="border10" align="right"><b>Medium</b></td>
	<td valign="top" class="border10">|WEIGHT.MEDIUM|</td>
	<td valign="top" class="border10" align="right"><b>Heavy</b></td>
	<td valign="top" class="border10">|WEIGHT.HEAVY|</td>
	</tr>
	</table>
<!-- STOP Weight Table -->
<!-- START Illumination Table -->
|IIF(VAR.IF(var("COUNT[EQTYPE.LightSource]")>0;1;0):1)|
<br />
	<table width="100%" cellspacing="0" cellpadding="3" summary="Illumination" class="block">
	<tr>
	<th class="ab" colspan="4">Illumination</th>
	</tr>
	<tr>
		<td width="45%" class="border10"><b>Light Source</b></td>
		<td width="15%" class="border10"><b>Bright</b></td>
			<td width="15%" class="border10"><b>Shadowy</b></td>
		<td width="15%" class="border10"><b>Duration</b></td>
	</tr>
|FOR,%light,0,COUNT[EQTYPE.LightSource]-1,1,0|
|OIF(EVEN:%light,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
		<td class="border10">|EQTYPE.LightSource.%light.NAME|</td>
		<td class="border10">|EQTYPE.LightSource.%light.QUALITY.Bright Illumination|</td>
			<td class="border10">|EQTYPE.LightSource.%light.QUALITY.Shadowy Illumination|</td>
		<td class="border10">|EQTYPE.LightSource.%light.QUALITY.Duration|</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Illumination Table -->
<!-- START Money Table -->
<br />
	<table width="100%" cellspacing="0" cellpadding="3" summary="Money" class="block">
	<tr>
	<th colspan="1" class="ab">Money</th>
	</tr>
	<tr>
	<td valign="top" width="70%" class="border10">
|FOR.0,COUNT[EQTYPE.Coin],1,\EQTYPE.Coin.%.NAME\: \EQTYPE.Coin.%.QTY\, ,<br/>,1|
|FOR.0,COUNT[EQTYPE.Gem],1,\EQTYPE.Gem.%.QTY\x\EQTYPE.Gem.%.NAME\ (\EQTYPE.Gem.%.COST\) , ,<br/>,1|
<span class="notes">|MISC.FUNDS| Unspent Funds = |GOLD.TRUNC|</span></td>
	</tr>
	</table>
<!-- STOP Money Table -->
	<br />
<!-- START Companions Tables -->
|%FOLLOWERTYPE.Familiar|
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Familiar Table" class="block">
	<tr>
	<td colspan="12" class="ab"><b>Familiar: |FOLLOWERTYPE.FAMILIAR.0.NAME| (|FOLLOWERTYPE.FAMILIAR.0.RACE|)</b></td>
	</tr>
	<tr>
	<td width="8%" class="ablableb">FORT</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.FAMILIAR.0.CHECK.FORTITUDE.TOTAL|</td>
	<td width="8%" class="ablableb">REF</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.FAMILIAR.0.CHECK.REFLEX.TOTAL|</td>
	<td width="8%" class="ablableb">WILL</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.FAMILIAR.0.CHECK.2.TOTAL|</td>
	<td width="8%" class="ablableb">HP</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.FAMILIAR.0.HP|</td>
	<td width="8%" class="ablableb">AC</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.FAMILIAR.0.AC.Total|</td>
	<td width="8%" class="ablableb">INIT</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.FAMILIAR.0.INITIATIVEMOD|</td>
	</tr>
|FOR,%wep,0,COUNT[FOLLOWERTYPE.FAMILIAR.0.EQTYPE.WEAPON]-1,1,1|
	<tr>
	<td colspan="2" class="ablableb">|FOLLOWERTYPE.FAMILIAR.0.WEAPON.%wep.NAME|</td>
	<td colspan="2" class="border10c">|FOLLOWERTYPE.FAMILIAR.0.WEAPON.%wep.TOTALHIT|</td>
	<td colspan="2" class="ablableb">DAMAGE:</td>
	<td colspan="2" class="border10c">|FOLLOWERTYPE.FAMILIAR.0.WEAPON.%wep.DAMAGE|</td>
	<td colspan="2" class="ablableb">CRITICAL:</td>
	<td colspan="2" class="border10c">|FOLLOWERTYPE.FAMILIAR.0.WEAPON.%wep.CRIT|/&#215;|FOLLOWERTYPE.FAMILIAR.0.WEAPON.%wep.MULT|</td>
	</tr>
|ENDFOR|
	<tr>
	<td class="ablableb">Special</td>
	<td class="border10" colspan="12">&nbsp;&nbsp;|FOLLOWERTYPE.FAMILIAR.0.SPECIALLIST|</td>
	</tr>
	<tr>
	</tr>
	</table>
	<br />
|%|
|%FOLLOWERTYPE.SPECIAL MOUNT|
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Special Mount Table" class="block">
	<tr>
	<td class="ab" colspan="12"><b>Special Mount: |FOLLOWERTYPE.SPECIAL MOUNT.0.NAME| (|FOLLOWERTYPE.SPECIAL MOUNT.0.RACE|)</b></td>
	</tr>
	<tr>
	<td width="8%" class="ablableb">FORT</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.SPECIAL MOUNT.0.CHECK.FORTITUDE.TOTAL|</td>
	<td width="8%" class="ablableb">REF</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.SPECIAL MOUNT.0.CHECK.REFLEX.TOTAL|</td>
	<td width="8%" class="ablableb">WILL</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.SPECIAL MOUNT.0.CHECK.2.TOTAL|</td>
	<td width="8%" class="ablableb">HP</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.SPECIAL MOUNT.0.HP|</td>
	<td width="8%" class="ablableb">AC</td>
	<td width="8%" class="border10c" >|FOLLOWERTYPE.SPECIAL MOUNT.0.AC.Total|</td>
	<td width="8%" class="ablableb">INIT</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.SPECIAL MOUNT.0.INITIATIVEMOD|</td>
	</tr>
|FOR,%wep,0,COUNT[FOLLOWERTYPE.SPECIAL MOUNT.0.EQTYPE.WEAPON]-1,1,1|
	<tr>
	<td colspan="2" class="ablableb">|FOLLOWERTYPE.SPECIAL MOUNT.0.WEAPON.%wep.NAME|</td>
	<td colspan="2" class="border10c">|FOLLOWERTYPE.SPECIAL MOUNT.0.WEAPON.%wep.TOTALHIT|</td>
	<td colspan="2" class="ablableb">DAMAGE</td>
	<td colspan="2" class="border10c">|FOLLOWERTYPE.SPECIAL MOUNT.0.WEAPON.%wep.DAMAGE|</td>
	<td colspan="2" class="ablableb">CRITICAL</td>
	<td colspan="2" class="border10c">|FOLLOWERTYPE.SPECIAL MOUNT.0.WEAPON.%wep.CRIT|/&#215;|FOLLOWERTYPE.SPECIAL MOUNT.0.WEAPON.%wep.MULT|</td>
	</tr>
|ENDFOR|
	<tr>
	<td class="ablableb">Special:</td>
	<td class="border10" colspan="12">&nbsp;&nbsp;|FOLLOWERTYPE.SPECIAL MOUNT.0.SPECIALLIST|</td>
	</tr>
	<tr>
	</tr>
	</table>
	<br />
|%|
|%FOLLOWERTYPE.ANIMAL COMPANIONS|
|FOR,%anm,0,COUNT[FOLLOWERTYPE.ANIMAL COMPANIONS]-1,1,0|
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Animal Companion Table" class="block">
	<tr>
	<td class="ab" colspan="12"><b>Animal Companion: |FOLLOWERTYPE.ANIMAL COMPANIONS.%anm.NAME| (|FOLLOWERTYPE.ANIMAL COMPANIONS.%anm.RACE|)</b></td>
	</tr>
	<tr>
	<td width="8%" class="ablableb">FORT</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.ANIMAL COMPANIONS.%anm.CHECK.FORTITUDE.TOTAL|</td>
	<td width="8%" class="ablableb">REF</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.ANIMAL COMPANIONS.%anm.CHECK.REFLEX.TOTAL|</td>
	<td width="8%" class="ablableb">WILL</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.ANIMAL COMPANIONS.%anm.CHECK.2.TOTAL|</td>
	<td width="8%" class="ablableb">HP</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.ANIMAL COMPANIONS.%anm.HP|</td>
	<td width="8%" class="ablableb">AC</td>
	<td width="8%" class="border10c" >|FOLLOWERTYPE.ANIMAL COMPANIONS.%anm.AC.Total|</td>
	<td width="8%" class="ablableb">INIT</td>
	<td width="8%" class="border10c">|FOLLOWERTYPE.ANIMAL COMPANIONS.%anm.INITIATIVEMOD|</td>
	</tr>
|FOR,%wep,0,COUNT[FOLLOWERTYPE.ANIMAL COMPANIONS.%anm.EQTYPE.WEAPON]-1,1,1|
	<tr>
	<td colspan="2" class="ablableb">|FOLLOWERTYPE.ANIMAL COMPANIONS.%anm.WEAPON.%wep.NAME|</td>
	<td colspan="2" class="border10c">|FOLLOWERTYPE.ANIMAL COMPANIONS.%anm.WEAPON.%wep.TOTALHIT|</td>
	<td colspan="2" class="ablableb">DAMAGE:</td>
	<td colspan="2" class="border10c">|FOLLOWERTYPE.ANIMAL COMPANIONS.%anm.WEAPON.%wep.DAMAGE|</td>
	<td colspan="2" class="ablableb">CRITICAL:</td>
	<td colspan="2" class="border10c">|FOLLOWERTYPE.ANIMAL COMPANIONS.%anm.WEAPON.%wep.CRIT|/&#215;|FOLLOWERTYPE.ANIMAL COMPANIONS.%anm.WEAPON.%wep.MULT|</td>
	</tr>
|ENDFOR|
	<tr>
	<td class="ablableb">Special</td>
	<td class="border10" colspan="11">&nbsp;&nbsp;|FOLLOWERTYPE.ANIMAL COMPANIONS.%anm.SPECIALLIST|<br /></td>
	</tr>
	</table>
	<br />
|ENDFOR|
<!-- STOP Companions Table1 -->
|%|
|%FOLLOWERTYPE.FOLLOWERS|
	<table width="100%" cellspacing="0" cellpadding="3" summary="Henchmen Table" class="block">
	<tr>
	<th class="ab">Henchmen</th>
	</tr>
	<tr>
	<td valign="top" width="70%" class="border8">
|FOR,%follower,0,COUNT[FOLLOWERTYPE.FOLLOWERS]-1,1,1|
|FOLLOWERTYPE.FOLLOWERS.%follower.NAME|,&nbsp;
|ENDFOR|
	</td>
	</tr>
	</table>
<!-- STOP Companions Table1 -->
|%|
|%MISC.COMPANIONS|
<!-- START Misc Companions Table -->
	<table width="100%" cellspacing="0" cellpadding="3" summary="Other Companions Table" class="block">
	<tr>
	<th class="ab">Other Companions</th>
	</tr>
	<tr>
	<td valign="top" width="70%" class="border8"><span class="notes">|MISC.COMPANIONS|</span></td>
	</tr>
	</table>
	<br />
<!-- STOP Misc Companions Table -->
|%|
<!-- START Template Table -->
|%TEMPLATE.0|
	<table width="100%" cellspacing="0" cellpadding="3" summary="Template Table" class="block">
	<tr>
	<th class="ab">Templates</th>
	</tr>
	<tr>
	<td valign="top" width="70%" class="border8">|TEMPLATELIST|<br /></td>
	</tr>
	</table>
	<br />
|%|
<!-- STOP Template Table -->
<!-- START Salient Divine Ability Table -->
|IIF(HASVAR:DivineRank)|
	<table width="100%" cellspacing="0" cellpadding="3" summary="Salient Divine Table" class="block">
	<tr>
	<th class="ab">Salient Divine Abilities</th>
	</tr>
	<tr>
	<td valign="top" width="70%" class="border8">|ABILITYLIST.Salient Divine Ability|<br /></td>
	</tr>
	</table>
	<br />
|ELSE|
|ENDIF|
<!-- STOP Salient Divine Ability Table -->
|%MISC.MAGIC|
<!-- START Misc Magic Table -->
	<table width="100%" cellspacing="0" cellpadding="3" summary="Misc. Magic Table" class="block">
	<tr>
	<th class="ab">Magic</th>
	</tr>
	<tr>
	<td valign="top" width="70%" class="border8"><span class="notes">|MISC.MAGIC|</span></td>
	</tr>
	</table>
	<br />
<!-- STOP Misc Magic Table -->
|%|
|%PROHIBITEDLIST|
<!-- START Prohibited Table -->
	<table width="100%" cellspacing="0" cellpadding="3" summary="Prohibited List">
	<tr>
	<td class="ab"><b>PROHIBITED</b></td>
	</tr>
	<tr>
	<td valign="top" width="100%" class="border8">|PROHIBITEDLIST|<br /></td>
	</tr>
	</table>
	<br />
<!-- STOP Prohibited Table -->
|%|
|%DOMAIN.1|
<!-- START Domain Table -->
	<table width="100%" cellspacing="0" cellpadding="3" summary="Domain List">
	<tr>
	<td colspan="2" class="ab"><b>Cleric of |DEITY|</b></td>
	</tr>
	<tr>
	<td valign="top" class="border8"><b>Domain</b><br /></td>
	<td valign="top" class="border8"><b>Granted Power</b><br /></td>
	</tr>
<!--Bjorn Ehlert: The use of COUNT[DOMAINS]+1 doesn't result in empty TDs at the end of the TABLE-->
|FOR.1,COUNT[DOMAINS]+1,1,<tr><td valign="top" class="border8">\DOMAIN.%\<br /></td><td valign="top" class="border8">\DOMAIN.%.POWER\<br /></td></tr>, , ,0|
	</table>
	<br />
|%|
<!-- STOP Domain Table -->

<!-- Start Turning Table -->
|FOR,%turncount,0,count("ABILITIES","CATEGORY=Special Ability","ASPECT=TurnType")-1,1,0|
	<table width="100%" cellspacing="0" cellpadding="3" summary="Clerical Turning Table">
	<tr>
	<td bgcolor="black" align="center" colspan="4" class="ab"><b>|ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnType| |ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnKind|</b></td>
	</tr>
	<tr >
	<td rowspan="2" width="25%" bgcolor="black" align="center" class="ablable">TURNING CHECK<br />RESULT</td>
	<td rowspan="2" width="25%" bgcolor="black" align="center" class="ablable">AFFECTED<br />(MAX HIT DICE)</td>
	<td width="25%" bgcolor="black" align="right" class="ablable">TURN LEVEL</td>
	<td width="25%" class="border10" align="center"><b>|ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnLevel.INTVAL|</b></td>
	</tr>
	<tr>
	<td bgcolor="black" align="right" class="ablable">TURN DAMAGE</td>
	<td class="border10" align="center"><b>|ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnDamage|</b></td>
	</tr>
	<tr>
	<td align="center" class="font8"><b>Up to 0</b></td>
	<td align="center" class="font8"><b>|((ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnLevel)-4).INTVAL|</b></td>
	<td bgcolor="black" align="right" class="ablable">TURNING CHECK</td>
	<td class="border10" align="center"><b>1d20|ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnCheck.INTVAL.SIGN.NOZERO|</b></td>
	</tr>
	<tr>
	<td bgcolor="gray" align="center" class="font8"><b>1 - 3</b></td>
	<td bgcolor="gray" align="center" class="font8"><b>|((ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnLevel)-3).INTVAL|</b></td>
	<td bgcolor="black" align="right" class="ablable">TURNS/DAY</td>
	<td class="border10" align="center"><b>|ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnTimes.INTVAL|</b></td>
	</tr>
	<tr>
	<td align="center" class="font8"><b>4 - 6</b></td>
	<td align="center" class="font8"><b>|((ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnLevel)-2).INTVAL|</b></td>
	<td colspan="2" class="border10" align="center">|FOR.0,ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnTimes.INTVAL,5,&#9744;, , ,1|</td>
	</tr>
	<tr>
	<td bgcolor="gray" align="center" class="font8"><b>7 - 9</b></td>
	<td bgcolor="gray" align="center" class="font8"><b>|((ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnLevel)-1).INTVAL|</b></td>
	<td colspan="2" rowspan="6" class="border10" valign="top">|ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnNotes|</td>
	</tr>
	<tr>
	<td align="center" class="font8"><b>10 - 12</b></td>
	<td align="center" class="font8"><b>|((ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnLevel)+0).INTVAL|</b></td>
	</tr>
	<tr>
	<td bgcolor="gray" align="center" class="font8"><b>13 - 15</b></td>
	<td bgcolor="gray" align="center" class="font8"><b>|((ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnLevel)+1).INTVAL|</b></td>
	</tr>
	<tr>
	<td align="center" class="font8"><b>16 - 18</b></td>
	<td align="center" class="font8"><b>|((ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnLevel)+2).INTVAL|</b></td>
	</tr>
	<tr>
	<td bgcolor="gray" align="center" class="font8"><b>19 - 21</b></td>
	<td bgcolor="gray" align="center" class="font8"><b>|((ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnLevel)+3).INTVAL|</b></td>
	</tr>
	<tr>
	<td align="center" class="font8"><b>22+</b></td>
	<td align="center" class="font8"><b>|((ABILITYALL.Special Ability.%turncount.ASPECT=TurnType.ASPECT.TurnLevel)+4).INTVAL|</b></td>
	</tr>
	</table>
	<br />
|ENDFOR|


<!-- Stop Turning Table -->

<!-- Start Channeling Table -->
|FOR,%channelingcount,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=ChannelingBase")-1,1,0|
|IIF(ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.HASASPECT.ChannelingType:Y)|
	<table width="100%" cellspacing="0" cellpadding="3" summary="Channeling Table">
	<tr>
	<td bgcolor="black" align="center" colspan="4" class="ab"><b>|ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingType| |ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingKind|</b></td>
	</tr>
	<tr >
	<td rowspan="2" width="25%" bgcolor="black" align="center" class="ablable">CHANNELING CHECK<br />RESULT</td>
	<td rowspan="2" width="25%" bgcolor="black" align="center" class="ablable">AFFECTED<br />(MAX HIT DICE)</td>
	<td width="25%" bgcolor="black" align="right" class="ablable">CHANNELING LEVEL</td>
	<td width="25%" class="border10" align="center"><b>|ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingLevel.INTVAL|</b></td>
	</tr>
	<tr>
	<td bgcolor="black" align="right" class="ablable">MAGNITUDE</td>

	<td class="border10" align="center"><b>|ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingOutput.ASPECT.ChannelingMagnitude||ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingOutput.ASPECT.ChannelingMagnitudeBonus.SIGN||ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingOutput.ASPECT.ChannelingMagnitudeFactor|</b></td>
	</tr>
	<tr>
	<td align="center" class="font8"><b>Up to 0</b></td>
	<td align="center" class="font8"><b>|((ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingIntensity)-8).INTVAL|</b></td>
	<td bgcolor="black" align="right" class="ablable">CHANNELING CHECK</td>
	<td class="border10" align="center"><b>1d20|ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingCheck.INTVAL.SIGN.NOZERO|</b></td>
	</tr>
	<tr>
	<td bgcolor="gray" align="center" class="font8"><b>1 - 3</b></td>
	<td bgcolor="gray" align="center" class="font8"><b>|((ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingIntensity)-7).INTVAL|</b></td>
		<td bgcolor="black" align="right" class="ablable">RANGE</td>
		<td class="border10" align="center"><b>|ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingRange| (ft.)</b></td>
	</tr>
	<tr>
	<td align="center" class="font8"><b>4 - 6</b></td>
	<td align="center" class="font8"><b>|((ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingIntensity)-6).INTVAL|</b></td>
	<td bgcolor="black" align="right" class="ablable">TURNS/DAY</td>
	<td class="border10" align="center"><b>|ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingUses.INTVAL|</b></td>
	</tr>
	<tr>
	<td bgcolor="gray" align="center" class="font8"><b>7 - 9</b></td>
	<td bgcolor="gray" align="center" class="font8"><b>|((ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingIntensity)-5).INTVAL|</b></td>
	<td bgcolor="black" align="right" class="ablable">USES</td>
	<td colspan="2" class="border10" align="center">|FOR.0,ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingUses.INTVAL,5,&#9744;, , ,1|</td>
	</tr>
	<tr>
	<td align="center" class="font8"><b>10 - 12</b></td>
	<td align="center" class="font8"><b>|((ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingIntensity)-4).INTVAL|</b></td>
	<td colspan="2" rowspan="6" class="border8" valign="top">|ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingNotes|</td>
	</tr>
	<tr>
	<td bgcolor="gray" align="center" class="font8"><b>13 - 15</b></td>
	<td bgcolor="gray" align="center" class="font8"><b>|((ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingIntensity)-3).INTVAL|</b></td>
	</tr>
	<tr>
	<td align="center" class="font8"><b>16 - 18</b></td>
	<td align="center" class="font8"><b>|((ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingIntensity)-2).INTVAL|</b></td>
	</tr>
	<tr>
	<td bgcolor="gray" align="center" class="font8"><b>19 - 21</b></td>
	<td bgcolor="gray" align="center" class="font8"><b>|((ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingIntensity)-1).INTVAL|</b></td>
	</tr>
	<tr>
	<td align="center" class="font8"><b>22+</b></td>
	<td align="center" class="font8"><b>|((ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingIntensity)+0).INTVAL|</b></td>
	</tr>
	<tr>
	<td bgcolor="gray" align="center" class="font8"><b>26+</b></td>
	<td bgcolor="gray" align="center" class="font8"><b>|((ABILITYALL.Special Ability.%channelingcount.TYPE=ChannelingBase.ASPECT.ChannelingIntensity)+1).INTVAL|</b></td>
	</tr>
	</table>
	<br>

|ENDIF|
|ENDFOR|


<!-- Stop Channeling Table -->


<!-- Start Overflow Weapons table -->
|FOR,%weap,3,COUNT[EQTYPE.Weapon]-1,1,1|
	<table cellpadding="0" width="100%" cellspacing="0" border="0" summary="Weapon Overflow">
|IIF(WEAPON.%weap.CATEGORY:BOTH)|
|IIF(WEAPON.%weap.CATEGORY:Ranged)|
	<tr>
	<td align="left" height="15" bgcolor="black" width="10%" class="ablableb">&nbsp;&nbsp;Range</td>
|FOR,%range,0,4,1,0|
	<td width="18%" align="center" bgcolor="black" class="border" class="ablable"><b>|WEAPON.%weap.RANGELIST.%range|<br /></b></td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Bonus</td>
|FOR,%range1,0,4,1,0|
	<td class="border10c"><b>|WEAPON.%weap.RANGELIST.%range1.TOTALHIT|<br /></b></td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="border" class="ablableb">&nbsp;Dam</td>
|FOR,%range2,0,4,1,0|
	<td class="border10cb">|WEAPON.%weap.RANGELIST.%range2.DAMAGE|</td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" colspan="2" class="ablable"><b>&nbsp;Ammunition Used<br /></b></td>
	<td align="center" valign="bottom" bgcolor="white" class="border8" colspan="5">&#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744;</td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" colspan="2" class="ablable"><b>&nbsp;Special Properties<br /></b></td>
	<td class="border10" colspan="5">&nbsp;|WEAPON.%weap.SPROP|<br /></td>
	</tr>
	</table>
	<br />
|ELSE|
	<tr>
	<td align="center" bgcolor="black" rowspan="2" width="40%" class="ab"><b>|WEAPON.%weap.NAME|<br /></b></td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">HAND</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">TYPE</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">SIZE</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">CRITICAL</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">REACH</td>
	</tr>
	<tr>
	<td class="border10c"><b>|WEAPON.%weap.HAND|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TYPE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.SIZE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.CRIT|/&#215;|WEAPON.%weap.MULT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.REACH| ft.<br /></b></td>
	</tr>
	</table>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Weapon Overflow">
	<tr>
	<td align="center" height="15" bgcolor="black" width="8%"></td>
	<td align="center" height="15" bgcolor="black" width="16%" class="ablableb">1H-P</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">1H-O</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">2H</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">2W-P-(OH)</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">2W-P-(OL)</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">2W-OH</td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Bonus</td>
	<td class="border10c"><b>|WEAPON.%weap.BASEHIT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.OHHIT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.THHIT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TWPHITH|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TWPHITL|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TWOHIT|<br /></b></td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Dam</td>
	<td class="border10c"><b>|WEAPON.%weap.BASICDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.OHDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.THDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.BASICDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.BASICDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.OHDAMAGE|<br /></b></td>
	</tr>
	</table>
|ENDIF|
|ELSE|
|IIF(WEAPON.%weap.CATEGORY:Ranged)|
	<tr>
	<td align="center" bgcolor="black" rowspan="2" width="40%" class="ab"><b>|WEAPON.%weap.NAME|<br /></b></td>
	<td align="center" bgcolor="black" width="15%" height="15" class="ablableb">HAND</td>
	<td align="center" bgcolor="black" width="15%" height="15" class="ablableb">TYPE</td>
	<td align="center" bgcolor="black" width="15%" height="15" class="ablableb">SIZE</td>
	<td align="center" bgcolor="black" width="15%" height="15" class="ablableb">CRITICAL</td>
	</tr>
	<tr>
	<td class="border10c"><b>|WEAPON.%weap.HAND|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TYPE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.SIZE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.CRIT|/&#215;|WEAPON.%weap.MULT|<br /></b></td>
	</tr>
	</table>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Weapon Overflow">
|IIF(WEAPON.%weap.CONTENTS:0)|
	<tr>
	<td align="left" height="15" bgcolor="black" width="8%" class="ablableb">&nbsp;&nbsp;Range</td>
|FOR,%range,0,4,1,0|
	<td width="18%" align="center" bgcolor="black" class="ablable"><b>|WEAPON.%weap.RANGELIST.%range|<br /></b></td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Bonus</td>
|FOR,%range1,0,4,1,0|
	<td class="border10c"><b>|WEAPON.%weap.RANGELIST.%range1.TOTALHIT|<br /></b></td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Dam</td>
|FOR,%range2,0,4,1,0|
	<td class="border10cb">|WEAPON.%weap.RANGELIST.%range2.DAMAGE|</td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" colspan="2" class="ablable"><b>&nbsp;Ammunition Used<br /></b></td>
	<td align="center" valign="bottom" bgcolor="white" class="border8" colspan="5">&#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744;</td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" colspan="2" class="ablable"><b>&nbsp;Special Properties<br /></b></td>
	<td class="border10" colspan="5">&nbsp;|WEAPON.%weap.SPROP|<br /></td>
	</tr>
	</table>
	<br />
|ELSE|
|FOR,%ammo,0,WEAPON.%weap.CONTENTS-1,1,0|
	<tr>
	<td colspan="6" align="left" height="15" bgcolor="black" width="8%" class="ablableb">&nbsp;AMMUNITION:  |WEAPON.%weap.CONTENTS.%ammo|
|IIF(WEAPON.%weap.CONTENTS.%ammo.SPROP: )|
(|WEAPON.%weap.CONTENTS.%ammo.SPROP|)
|ENDIF|
	</td>
	</tr>
	<tr>
	<td align="left" height="15" bgcolor="black" width="8%" class="ablableb">&nbsp;Range</td>
|FOR,%range,0,4,1,0|
	<td width="18%" class="ablableb">|WEAPON.%weap.RANGELIST.%range|</td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" class="ablableb">&nbsp;Bonus</td>
|FOR,%range1,0,4,1,0|
	<td class="border10c"><b>|WEAPON.%weap.RANGELIST.%range1.CONTENTS.%ammo.TOTALHIT|<br /></b></td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Dam</td>
|FOR,%range2,0,4,1,0|
	<td class="border10cb">|WEAPON.%weap.RANGELIST.%range2.CONTENTS.%ammo.DAMAGE|</td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" colspan="2" class="ablable"><b>&nbsp;Ammunition Used<br /></b></td>
	<td align="center" valign="bottom" bgcolor="white" colspan="5" class="border8">&#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744;</td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="border" colspan="2" class="ablable"><b>&nbsp;Special Properties<br /></b></td>
	<td class="border10" colspan="5">&nbsp;|WEAPON.%weap.SPROP|<br /></td>
	</tr>
	</table>
	<br />
|ENDIF|
|ELSE|
|IIF(WEAPON.%weap.ISTYPE.Double.OR.WEAPON.%weap.CATEGORY:Non-Standard-Melee.OR.WEAPON.%weap.CATEGORY:NATURAL)|
	<tr>
	<td align="center" height="15" bgcolor="black" rowspan="2" width="40%" class="ab"><b>|WEAPON.%weap.NAME|<br /></b></td>
	<td align="center" bgcolor="black" width="20%" height="15" class="ablableb">TOTAL ATTACK BONUS</td>
	<td align="center" bgcolor="black" width="20%" height="15" class="ablableb">DAMAGE</td>
	<td align="center" bgcolor="black" width="20%" height="15" class="ablableb">CRITICAL</td>
	</tr>
	<tr>
	<td class="border10c"><b>|WEAPON.%weap.TOTALHIT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.DAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.CRIT|/&#215;|WEAPON.%weap.MULT|<br /></b></td>
	</tr>
	</table>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Weapon Overflow">
	<tr>
	<td align="center" height="15" bgcolor="black" width="15%" class="ablableb">HAND</td>
	<td align="center" height="15" bgcolor="black" width="15%" class="ablableb">RANGE</td>
	<td align="center" bgcolor="black" width="15%" height="15" class="ablableb">TYPE</td>
	<td align="center" bgcolor="black" width="15%" height="15" class="ablableb">SIZE</td>
	<td align="center" bgcolor="black" width="40%" height="15" class="ablableb">SPECIAL PROPERTIES</td>
	</tr>
	<tr>
	<td class="border10c"><b>|WEAPON.%weap.HAND|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.RANGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TYPE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.SIZE|<br /></b></td>
	<td class="border10c">&nbsp;|WEAPON.%weap.SPROP|<br /></td>
	</tr>
	</table>
	<br />
|ELSE|
	<tr>
	<td align="center" bgcolor="black" rowspan="2" width="40%" class="ab"><b>|WEAPON.%weap.NAME|<br /></b></td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">HAND</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">TYPE</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">SIZE</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">CRITICAL</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">REACH</td>
	</tr>
	<tr>
	<td class="border10c"><b>|WEAPON.%weap.HAND|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TYPE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.SIZE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.CRIT|/&#215;|WEAPON.%weap.MULT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.REACH| ft.<br /></b></td>
	</tr>
	</table>
	<table cellpadding="0" cellspacing="0" border="0" width="100%" summary="Weapon Overflow">
	<tr>
	<td align="center" height="15" bgcolor="black" width="8%"></td>
	<td align="center" height="15" bgcolor="black" width="16%" class="ablableb">1H-P</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">1H-O</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">2H</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">2W-P-(OH)</td>
	<td align="center" bgcolor="black" width="16%" height="15" class="ablableb">2W-P-(OL)</td>
	<td align="center" bgcolor="black" width="12%" height="15" class="ablableb">2W-OH</td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Bonus</td>
	<td class="border10c"><b>|WEAPON.%weap.BASEHIT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.OHHIT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.THHIT|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TWPHITH|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TWPHITL|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.TWOHIT|<br /></b></td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Dam</td>
	<td class="border10c"><b>|WEAPON.%weap.BASICDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.OHDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.THDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.BASICDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.BASICDAMAGE|<br /></b></td>
	<td class="border10c"><b>|WEAPON.%weap.OHDAMAGE|<br /></b></td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" colspan="2" class="ablableb">&nbsp;Special Properties</td>
	<td class="border10" colspan="5">&nbsp;|WEAPON.%weap.SPROP|<br /></td>
	</tr>
	</table>
	<br />
|ENDIF|
|ENDIF|
|ENDIF|
|ENDFOR|
|%WEAPON.3|
|FOR,%weap,3,3,1,1|
	<table cellpadding="0" width="100%" cellspacing="0" border="0" summary="Weapon Overflow">
|IIF(WEAPON.%weap.CATEGORY:BOTH)|
|IIF(WEAPON.%weap.CATEGORY:Ranged)|
	<tr>
	<td align="left" height="15" bgcolor="black" width="8%" class="ablableb">&nbsp;&nbsp;Range</td>
|FOR,%range,0,4,1,0|
	<td width="18%" align="center" bgcolor="black" class="ablable"><b>|WEAPON.%weap.RANGELIST.%range|<br /></b></td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Bonus</td>
|FOR,%range1,0,4,1,0|
	<td class="border10c"><b>|WEAPON.%weap.RANGELIST.%range1.TOTALHIT|<br /></b></td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" class="ablableb">&nbsp;Dam</td>
|FOR,%range2,0,4,1,0|
	<td class="border10cb">|WEAPON.%weap.RANGELIST.%range2.DAMAGE|</td>
|ENDFOR|
	</tr>
	<tr>
	<td align="left" bgcolor="black" colspan="2" class="ablable"><b>&nbsp;Ammunition Used<br /></b></td>
	<td align="center" valign="bottom" bgcolor="white" class="border8" colspan="5">&#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744; &#9744;&#9744;&#9744;&#9744;&#9744;</td>
	</tr>
	<tr>
	<td align="left" bgcolor="black" colspan="2" class="ablable"><b>&nbsp;Special Properties<br /></b></td>
	<td class="border10" colspan="5">&nbsp;|WEAPON.%weap.SPROP|<br /></td>
	</tr>
	</table>
|ELSE|
	</table>
|ENDIF|
|ENDIF|
|ENDFOR|
|%|
	<table cellpadding="0" width="100%" cellspacing="0" border="0" summary="Weapon Abbreviations">
	<tr>
	
	<td class="key"><b>1H-P:</b> One handed, primary hand. <b>1H-O:</b> 
	One handed, off hand. <b>2H:</b> Two handed. <b>2W-P-(OH):</b> 
	2 weapons, primary hand (off hand weapon is heavy). <b>2W-P-(OL):</b> 
	2 weapons, primary hand (off hand weapon is light). <b>2W-OH:</b> 2 
	weapons, off hand.</td>
	</tr>
	</table>
<!-- End Overflow Weapons Table -->
	 </td>
	 <td width="50%" valign="top">
<!-- START Language Table -->
	<table width="100%" cellspacing="0" cellpadding="3" summary="Language Table" class="block">
	<tr>
	<th class="ab" colspan="1">Languages</th>
	</tr>
	<tr>
	<td valign="top" width="100%" class="border10">|LANGUAGES|<br /></td>
	</tr>
	</table>
	<br />
<!-- STOP Language Table -->
<!-- Start Proficiency Table -->
|%WEAPONPROF|
	<table width="100%" cellspacing="0" cellpadding="3" summary="Proficiency Table" class="block">
	<tr>
	<th class="ab" colspan="1">Proficiencies</th>
	</tr>
	<tr>
	<td valign="top" width="100%" class="border10">|WEAPONPROFS|<br /></td>
	</tr>
	</table>
	<br />
<!-- STOP Proficiency Table -->
|%|

<!-- Eclipse Addons >
<!-- START Spell Caster Output Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=SpellCasterOutput";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
<table width="100%" cellspacing="0" cellpadding="2" summary="Spell Caster Levels">
<tr>
<th bgcolor="black" class="ab" colspan="2">Spell Caster Levels</th>
</tr>
|FOR,%spellcaster,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=SpellCasterOutput","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%spellcaster,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" class="font8" width="70%" align="left"><b>|ABILITYALL.Special Ability.VISIBLE.%spellcaster.TYPE=SpellCasterOutput|</b></td>
	<td valign="top" class="font8" width="30%" align="right">[|ABILITYALL.Special Ability.VISIBLE.%spellcaster.TYPE=SpellCasterOutput.SOURCE|]</td>
<tr>
|OIF(EVEN:%spellcaster,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;|ABILITYALL.Special Ability.VISIBLE.%spellcaster.TYPE=SpellCasterOutput.DESC|</td>
</tr>
|ENDFOR|
</table>
|ENDIF|
<!-- STOP Spell Caster Output Table -->


<!-- START Disadvantages Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=Disadvantage";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Disadvantages Table">
	<tr>
	<th bgcolor="black" class="ab" colspan="2">Disadvantages</th>
	</tr>
|FOR,%disadvantage,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=Disadvantage","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%disadvantage,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" class="font8" width="70%"><b>|ABILITYALL.Special Ability.VISIBLE.%disadvantage.TYPE=Disadvantage|</b></td>
	<td valign="top" class="font8" width="30%" align="right">[|ABILITYALL.Special Ability.VISIBLE.%disadvantage.TYPE=Disadvantage.SOURCE|]</td>
	<tr>
|OIF(EVEN:%disadvantage,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Special Ability.VISIBLE.%disadvantage.TYPE=Disadvantage.DESC|
	</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Disadvantages Table -->

<!-- START Afflictions Table -->
|IIF(count("ABILITIES";"CATEGORY=Affliction";"TYPE=Affliction";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Affliction Table" class="block">
	<tr>
	<th class="ab">Afflictions</th>
	</tr>
|FOR,%Affliction,0,count("ABILITIES","CATEGORY=Affliction","TYPE=Affliction","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%affliction,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" class="font8"><b>|ABILITYALL.Affliction.VISIBLE.%affliction.TYPE=Affliction|
</b>
|ABILITYALL.Affliction.VISIBLE.%affliction.TYPE=Affliction.DESC|</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Afflictions Table -->


<!-- START Traits Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=Trait";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Traits Table" class="block">
	<tr>
	<th class="ab" colspan="2">Traits</th>
	</tr>
|FOR,%trait,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=Trait","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%trait,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" class="font8" width="70%"><b>|ABILITYALL.Special Ability.VISIBLE.%trait.TYPE=Trait|</b></td>
	<td valign="top" class="font8" width="30%" align="right">[|ABILITYALL.Special Ability.VISIBLE.%trait.TYPE=Trait.SOURCE|]</td>
	<tr>
|OIF(EVEN:%trait,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Special Ability.VISIBLE.%trait.TYPE=Trait.DESC|
	</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Traits Table -->



<!-- START Character Creation Recurring Bonuses Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=CharCreation";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
	<tr>
	<th bgcolor="black" class="ab" colspan="2">Recurring Bonuses</th>
	</tr>
|FOR,%charcreation,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=CharCreation","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%charcreation,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top" width="70%"><b>|ABILITYALL.Special Ability.VISIBLE.%charcreation.TYPE=CharCreation|</b></td>
<td class="font8" valign="top" width="30%" align="right">[|ABILITYALL.Special Ability.VISIBLE.%charcreation.TYPE=CharCreation.SOURCE|]</td>
<tr>
|OIF(EVEN:%charcreation,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Special Ability.VISIBLE.%charcreation.TYPE=CharCreation.DESC|
	</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Character Creation Recurring Bonuses Table -->

<!-- START Eclipse Abilities Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=EclipseAbilityOutput";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
<table width="100%" cellspacing="0" cellpadding="2" summary="Eclipse Abilities Table" class="block">
<tr>
<th bgcolor="black" class="ab" colspan="2">Eclipse Abilities</th>
</tr>
|FOR,%eclipseAbilities,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=EclipseAbilityOutput","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%eclipseAbilities,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td valign="top" width="70%" class="font8"><b>|ABILITYALL.Special Ability.VISIBLE.%eclipseAbilities.TYPE=EclipseAbilityOutput|
|IIF(ABILITYALL.Special Ability.VISIBLE.%eclipseAbilities.TYPE=EclipseAbilityOutput.TYPE:Extraordinary)|
 (Ex)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%eclipseAbilities.TYPE=EclipseAbilityOutput.TYPE:Supernatural)|
 (Su)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%eclipseAbilities.TYPE=EclipseAbilityOutput.TYPE:SpellLike)|
 (Sp)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%eclipseAbilities.TYPE=EclipseAbilityOutput.TYPE:PsiLike)|
 (Ps)
|ENDIF|
</td>
<td class="font8" valign="top" width="30%" align="right">[|ABILITYALL.Special Ability.VISIBLE.%eclipseAbilities.TYPE=EclipseAbilityOutput.SOURCE|]</td>
<tr>
|OIF(EVEN:%eclipseAbilities,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top" align="indent" colspan="2">&#160;&#160;&#160;&#160;|ABILITYALL.Special Ability.VISIBLE.%eclipseAbilities.TYPE=EclipseAbilityOutput.DESC|</td>
</tr>
|ENDFOR|
</table>
|ENDIF|
<!-- STOP Eclipse Abilities Table -->
<!-- START Eclipse Racial Abilities Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=EclipseRacialOutput";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
<tr>
<th bgcolor="black" class="ab" colspan="2"><b>Eclipse Racial Abilities</b></th>
</tr>
|FOR,%eclipseRacialOutput,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=EclipseRacialOutput","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%eclipseRacialOutput,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td valign="top" width="70%" class="font8"><b>|ABILITYALL.Special Ability.VISIBLE.%eclipseRacialOutput.TYPE=EclipseRacialOutput|
|IIF(ABILITYALL.Special Ability.VISIBLE.%eclipseRacialOutput.TYPE=EclipseRacialOutput.TYPE:Extraordinary)| 
 (Ex)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%eclipseRacialOutput.TYPE=EclipseRacialOutput.TYPE:Supernatural)| 
 (Su)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%eclipseRacialOutput.TYPE=EclipseRacialOutput.TYPE:SpellLike)| 
 (Sp)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%eclipseRacialOutput.TYPE=EclipseRacialOutput.TYPE:PsiLike)| 
 (Ps)
|ENDIF|
</b>
</td>
<td class="font8" valign="top" width="30%" align="right">[|ABILITYALL.Special Ability.VISIBLE.%eclipseRacialOutput.TYPE=EclipseRacialOutput.SOURCE|]</td>
<tr>
|OIF(EVEN:%eclipseRacialOutput,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top" align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Special Ability.VISIBLE.%eclipseRacialOutput.TYPE=EclipseRacialOutput.DESC|
</td>
</tr>
|ENDFOR|
</table>
|ENDIF|
<!-- STOP Eclipse Racial Abilities Table -->

<!-- START Martial Arts Abilities Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=MartialArtsOutput";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
	<tr>
	<th bgcolor="black" class="ab" colspan="2"><b>Martial Arts Abilities</b></th>
	</tr>
|FOR,%martialart,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=MartialArtsOutput","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%martialart,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td valign="top" class="font8" width="70%"><b>|ABILITYALL.Special Ability.VISIBLE.%martialart.TYPE=MartialArtsOutput|</b></td>
<td class="font8" valign="top" width="30%" align="right">[|ABILITYALL.Special Ability.VISIBLE.%martialart.TYPE=MartialArtsOutput.SOURCE|]</td>
<tr>
|OIF(EVEN:%martialart,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Special Ability.VISIBLE.%martialart.TYPE=MartialArtsOutput.DESC|
	</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Martial Arts Abilities Table -->
<!-- START Mystic Artist Abilities Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=MysticArtistOutput";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
	<tr>
	<th bgcolor="black" class="ab" colspan="2"><b>Mystic Artist Abilities</b></th>
	</tr>
|FOR,%mysticArtist,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=MysticArtistOutput","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%mysticArtist,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" class="font8" width="70%"><b>|ABILITYALL.Special Ability.VISIBLE.%mysticArtist.TYPE=MysticArtistOutput|
</b></td>
<td class="font8" valign="top" width="30%" align="right">
[|ABILITYALL.Special Ability.VISIBLE.%mysticArtist.TYPE=MysticArtistOutput.SOURCE|]
</td>
<tr>
|OIF(EVEN:%mysticArtist,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Special Ability.VISIBLE.%mysticArtist.TYPE=MysticArtistOutput.DESC|
	</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Mystic Artist Abilities Table -->
<!-- START Witchcraft Abilities Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=WitchcraftOutput";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
	<tr>
	<th bgcolor="black" class="ab" colspan="2"><b>Witchcraft Abilities</b></th>
	</tr>
|FOR,%witchcraft,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=WitchcraftOutput","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%witchcraft,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" class="font8" width="70%"><b>|ABILITYALL.Special Ability.VISIBLE.%witchcraft.TYPE=WitchcraftOutput|</b></td>
<td class="font8" valign="top" width="30%" align="right">
[|ABILITYALL.Special Ability.VISIBLE.%witchcraft.TYPE=WitchcraftOutput.SOURCE|]
</td>
<tr>
|OIF(EVEN:%witchcraft,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Special Ability.VISIBLE.%witchcraft.TYPE=WitchcraftOutput.DESC|
	</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Witchraft Abilities Table -->
<!-- START Path of the Dragon Abilities Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=PathoftheDragon";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
	<tr>
	<th bgcolor="black" class="ab" colspan="2"><b>Path of the Dragon Abilities</b></th>
	</tr>
|FOR,%pathOfTheDragon,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=PathoftheDragon","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%pathOfTheDragon,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" class="font8" width="70%"><b>|ABILITYALL.Special Ability.VISIBLE.%pathOfTheDragon.TYPE=PathoftheDragon|</b></td>
<td class="font8" valign="top" width="30%" align="right">[|ABILITYALL.Special Ability.VISIBLE.%pathOfTheDragon.TYPE=PathoftheDragon.SOURCE|]</td>
<tr>
|OIF(EVEN:%pathOfTheDragon,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Special Ability.VISIBLE.%pathOfTheDragon.TYPE=PathoftheDragon.DESC|
	</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Path of the Dragon Abilities Table -->
<!-- START Dominion and Advanced Dominion Abilities Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=Dominion";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
	<tr>
	<th bgcolor="black" class="ab" colspan="2"><b>Domnion and Advanced Dominion Abilities</b></th>
	</tr>
|FOR,%dominion,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=Dominion","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%dominion,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" class="font8" width="70%"><b>|ABILITYALL.Special Ability.VISIBLE.%dominion.TYPE=Dominion|</b></td>
<td class="font8" valign="top" width="30%" align="right">
[|ABILITYALL.Special Ability.VISIBLE.%dominion.TYPE=Dominion.SOURCE|]
</td>
<tr>
|OIF(EVEN:%dominion,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Special Ability.VISIBLE.%dominion.TYPE=Dominion.DESC|
	</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Dominion and Advanced Dominion Abilities Table -->
<!-- START Channeling Abilities Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=ChannelingOutput";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
	<tr>
	<th bgcolor="black" class="ab" colspan="2"><b>Channeling Abilities</b></th>
	</tr>
|FOR,%channelingOutput,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=ChannelingOutput","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%channelingOutput,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" width="70%" class="font8"><b>|ABILITYALL.Special Ability.VISIBLE.%channelingOutput.TYPE=ChannelingOutput|
</b></td>
<td class="font8" valign="top" width="30%" align="right">
[|ABILITYALL.Special Ability.VISIBLE.%channelingOutput.TYPE=ChannelingOutput.SOURCE|]
</td>
<tr>
|OIF(EVEN:%channelingOutput,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Special Ability.VISIBLE.%channelingOutput.TYPE=ChannelingOutput.DESC|
	</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Channeling Abilities Table -->

<!-- End Eclipse Addons -->

<!-- START 4e At-Will Powers Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=AtWill";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="AtWill Table">
	<tr>
	<th bgcolor="black" class="ab" colspan="2"><b>At-Will Powers</b></th>
	</tr>
|FOR,%atWill,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=AtWill","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%atWill,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" width="70%" class="font8"><b>|ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill|</b></td>
 <td valign="top" width="30%" class="font8" align="right">[|ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.SOURCE|]</td>
<tr>
|OIF(EVEN:%atWill,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.DESC|
|IIF(ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.HASASPECT.Power Use:Y)|
|ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.ASPECT.Power Use|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.HASASPECT.Power Type:Y)|
|ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.ASPECT.Power Type|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.HASASPECT.Action Type:Y)|
|ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.ASPECT.Action Type|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.HASASPECT.Special:Y)|
|ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.ASPECT.Special|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.HASASPECT.Trigger:Y)|
|ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.ASPECT.Trigger|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.HASASPECT.Target:Y)|
|ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.ASPECT.Target|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.HASASPECT.Attack:Y)|
|ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.ASPECT.Attack|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.HASASPECT.Hit:Y)|
|ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.ASPECT.Hit|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.HASASPECT.Miss:Y)|
|ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.ASPECT.Miss|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.HASASPECT.Effect:Y)|
|ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.ASPECT.Effect|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.HASASPECT.Sustain:Y)|
|ABILITYALL.Special Ability.VISIBLE.%atWill.TYPE=AtWill.ASPECT.Sustain|
|ENDIF|
</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP At-Will Powers Table -->
<!-- START 4e Encounter Powers Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=Encounter";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
	<tr>
	<th bgcolor="black" class="ab" colspan="2"><b>Encounter Powers</b></th>
	</tr>
|FOR,%encounter,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=Encounter","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%encounter,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" width="70%" class="font8"><b>|ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter|</b></td>
	<td valign="top" width="30%" class="font8" align="right">[|ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.SOURCE|]</td>
	<tr>
|OIF(EVEN:%encounter,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.DESC|
|IIF(ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.HASASPECT.Power Use:Y)|
|ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.ASPECT.Power Use|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.HASASPECT.Power Type:Y)|
|ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.ASPECT.Power Type|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.HASASPECT.Action Type:Y)|
|ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.ASPECT.Action Type|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.HASASPECT.Special:Y)|
|ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.ASPECT.Special|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.HASASPECT.Trigger:Y)|
|ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.ASPECT.Trigger|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.HASASPECT.Target:Y)|
|ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.ASPECT.Target|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.HASASPECT.Attack:Y)|
|ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.ASPECT.Attack|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.HASASPECT.Hit:Y)|
|ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.ASPECT.Hit|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.HASASPECT.Miss:Y)|
|ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.ASPECT.Miss|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.HASASPECT.Effect:Y)|
|ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.ASPECT.Effect|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.HASASPECT.Sustain:Y)|
|ABILITYALL.Special Ability.VISIBLE.%encounter.TYPE=Encounter.ASPECT.Sustain|
|ENDIF|
</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Encounter Powers Table -->

<!-- START 4e Daily Powers Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=Daily";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
	<tr>
	<th bgcolor="black" class="ab" colspan="2"><b>Daily Powers</b></th>
	</tr>
|FOR,%daily,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=Daily","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%daily,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" width="70%" class="font8"><b>|ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily|</b></td>
<td valign="top" width="30%" class="font8" align="right">[|ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.SOURCE|]</td>
<tr>
|OIF(EVEN:%daily,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.DESC|
|IIF(ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.HASASPECT.Power Use:Y)|
|ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.ASPECT.Power Use|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.HASASPECT.Power Type:Y)|
|ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.ASPECT.Power Type|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.HASASPECT.Action Type:Y)|
|ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.ASPECT.Action Type|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.HASASPECT.Special:Y)|
|ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.ASPECT.Special|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.HASASPECT.Trigger:Y)|
|ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.ASPECT.Trigger|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.HASASPECT.Target:Y)|
|ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.ASPECT.Target|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.HASASPECT.Attack:Y)|
|ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.ASPECT.Attack|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.HASASPECT.Hit:Y)|
|ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.ASPECT.Hit|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.HASASPECT.Miss:Y)|
|ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.ASPECT.Miss|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.HASASPECT.Effect:Y)|
|ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.ASPECT.Effect|
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.HASASPECT.Sustain:Y)|
|ABILITYALL.Special Ability.VISIBLE.%daily.TYPE=Daily.ASPECT.Sustain|
|ENDIF|
</td>
</tr>
|ENDFOR|
</table>
|ENDIF|
<!-- STOP Daily Powers Table -->

<!-- START 4e Utility Powers Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=Utility";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
		<tr>
		<th bgcolor="black" class="ab" colspan="2"><b>Utility Powers</b></th>
		</tr>
|FOR,%utility,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=Utility","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%utility,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
		<td valign="top" width="70%" class="font8"><b>|ABILITYALL.Special Ability.VISIBLE.%utility.TYPE=Utility|</b></td>
		<td valign="top" width="30%" class="font8" align="right">[|ABILITYALL.Special Ability.VISIBLE.%utility.TYPE=Utility.SORCE|]	</td>
		<tr>
|OIF(EVEN:%utility,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Special Ability.VISIBLE.%utility.TYPE=Utility.DESC|</td>
		</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Utility Powers Table -->
<!-- START Talent Table -->
|IIF(count("ABILITIES";"CATEGORY=Talent";"TYPE=Talent";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
	<tr>
		<th bgcolor="black" class="ab" colspan="2"><b>Talents</b></th>
		</tr>
|FOR,%talent,0,count("ABILITIES","CATEGORY=Talent","TYPE=Talent","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%talent,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" width="70%" class="font8"><b>|ABILITYALL.Talent.VISIBLE.%talent.TYPE=Talent|
|IIF(ABILITYALL.Talent.VISIBLE.%talent.TYPE=Talent.TYPE:Extraordinary)| 
 (Ex)
|ENDIF|
|IIF(ABILITYALL.Talent.VISIBLE.%talent.TYPE=Talent.TYPE:Supernatural)| 
 (Su)
|ENDIF|
|IIF(ABILITYALL.Talent.VISIBLE.%talent.TYPE=Talent.TYPE:SpellLike)| 
 (Sp)
|ENDIF|
|IIF(ABILITYALL.Talent.VISIBLE.%talent.TYPE=Talent.TYPE:PsiLike)| 
 (Ps)
|ENDIF|
</b>
<td valign="top" width="30%" class="font8" align="right">[|ABILITYALL.Talent.VISIBLE.%talent.TYPE=Talent.SOURCE|]</td>
<tr>
|OIF(EVEN:%talent,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;|ABILITYALL.Talent.VISIBLE.%talent.TYPE=Talent.DESC|</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Talent Table -->

<!-- START Intelligent Item Table -->
|IIF(count("ABILITIES";"CATEGORY=Intelligent Item";"TYPE=IntelligentItemOutput";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Intelligent Item Table">
	<tr>
		<th bgcolor="black" class="ab" colspan="2"><b>Intelligent Item Statistics and Powers</b></th>
		</tr>
|FOR,%intelligentItem,0,count("ABILITIES","CATEGORY=Intelligent Item","TYPE=IntelligentItemOutput","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%intelligentItem,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" width="70%" class="font8"><b>|ABILITYALL.Intelligent Item.VISIBLE.%intelligentItem.TYPE=IntelligentItemOutput|
|IIF(ABILITYALL.Intelligent Item.VISIBLE.%intelligentItem.TYPE=IntelligentItemOutput.TYPE:Extraordinary)| 
 (Ex)
|ENDIF|
|IIF(ABILITYALL.Intelligent Item.VISIBLE.%intelligentItem.TYPE=IntelligentItemOutput.TYPE:Supernatural)| 
 (Su)
|ENDIF|
|IIF(ABILITYALL.Intelligent Item.VISIBLE.%intelligentItem.TYPE=IntelligentItemOutput.TYPE:SpellLike)| 
 (Sp)
|ENDIF|
|IIF(ABILITYALL.Intelligent Item.VISIBLE.%intelligentItem.TYPE=IntelligentItemOutput.TYPE:PsiLike)| 
 (Ps)
|ENDIF|
</b>
<td valign="top" width="30%" class="font8" align="right">[|ABILITYALL.Intelligent Item.VISIBLE.%intelligentItem.TYPE=IntelligentItemOutput.SOURCE|]</td>
<tr>
|OIF(EVEN:%intelligentItem,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;|ABILITYALL.Intelligent Item.VISIBLE.%intelligentItem.TYPE=IntelligentItemOutput.DESC|</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Intelligent Item Table -->

<!-- START Animal Tricks Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=AnimalTrick";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
<tr>
<th bgcolor="black" class="ab" colspan="2"><b>Animal Tricks</b></th>
</tr>
|FOR,%animalTrick,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=AnimalTrick","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%animalTrick,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td valign="top" width="70%" class="font8"><b>|ABILITYALL.Special Ability.VISIBLE.%animalTrick.TYPE=AnimalTrick|</b></td>
<td class="font8" valign="top"	width="30%" align="right">[|ABILITYALL.Special Ability.VISIBLE.%animalTrick.TYPE=AnimalTrick.SOURCE|]</td>
<tr>
|OIF(EVEN:%animalTrick,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Special Ability.VISIBLE.%animalTrick.TYPE=AnimalTrick.DESC|
</td>
</tr>
|ENDFOR|
</table>
|ENDIF|
<!-- STOP Animal Tricks Table -->


<!-- START Force Powers Table -->
|IIF(count("ABILITIES";"CATEGORY=Force Powers";"TYPE=ForcePower";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
	<tr>
	<th bgcolor="black" class="ab" colspan="2"><b>Force Powers</b></th>
	</tr>
|FOR,%forcePower,0,count("ABILITIES","CATEGORY=Force Powers","TYPE=ForcePower","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%forcePower,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" width="70%" class="font8"><b>|ABILITYALL.Force Powers.VISIBLE.%forcePower.TYPE=ForcePower|</b></td>
<td valign="top" width="30%" class="font8" align="right">[|ABILITYALL.Force Powers.VISIBLE.%forcePower.TYPE=ForcePower.SOURCE|]	</td>
<tr>
|OIF(EVEN:%forcePower,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Force Powers.VISIBLE.%forcePower.TYPE=ForcePower.DESC|</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Force Powers Table -->

<!-- START Force Secrets Table -->
|IIF(count("ABILITIES";"CATEGORY=Force Secrets";"TYPE=ForceSecrets";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
	<tr>
	<th bgcolor="black" class="ab" colspan="2"><b>Force Secrets</b></th>
	</tr>
|FOR,%forceSecrets,0,count("ABILITIES","CATEGORY=Force Secrets","TYPE=ForceSecrets","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%forceSecrets,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" width="70%" class="font8"><b>|ABILITYALL.Force Secrets.VISIBLE.%forceSecrets.TYPE=ForceSecrets|</b></td>
	<td valign="top" width="30%" class="font8" align="right">
	[|ABILITYALL.Force Secrets.VISIBLE.%forceSecrets.TYPE=ForceSecrets.SOURCE|]
	</td>
	<tr>
|OIF(EVEN:%forceSecrets,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;
|ABILITYALL.Force Secrets.VISIBLE.%forceSecrets.TYPE=ForceSecrets.DESC|</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Force Secrets Table -->

<!-- START Force Techniques Table -->
|IIF(count("ABILITIES";"CATEGORY=Force Techniques";"TYPE=ForceTechniques";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table">
	<tr>
	<th bgcolor="black" class="ab" colspan="2"><b>Force Techniques</b></th>
	</tr>
|FOR,%forceTechniques,0,count("ABILITIES","CATEGORY=Force Techniques","TYPE=ForceTechniques","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%forceTechniques,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" width="70%" class="font8"><b>|ABILITYALL.Force Techniques.VISIBLE.%forceTechniques.TYPE=ForceTechniques|</b></td>
<td valign="top" width="30%" class="font8" align="right">[|ABILITYALL.Force Techniques.VISIBLE.%forceTechniques.TYPE=ForceTechniques.SOURCE|]</td>
<tr>
|OIF(EVEN:%forceTechniques,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;|ABILITYALL.Force Techniques.VISIBLE.%forceTechniques.TYPE=ForceTechniques.DESC|</td>
	</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Force Techniques Table -->

<!-- START Archetypes Table -->
|IIF(count("ABILITIES";"CATEGORY=Archetype";"TYPE=Archetype";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
	<table width="100%" cellspacing="0" cellpadding="2" summary="Arcehtype Table">
		<tr>
			<td bgcolor="black" class="ab" colspan="2"><b>Archetypes</b></td>
		</tr>
|FOR,%archetype,0,count("ABILITIES","CATEGORY=Archetype","TYPE=Archetype","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%archetype,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
	<td valign="top" width="70%" class="font8"><b>|ABILITYALL.Archetype.VISIBLE.%archetype.TYPE=Archetype|</b></td>
	<td class="font8" valign="top"	width="30%" align="right">[|ABILITYALL.Archetype.VISIBLE.%archetype.TYPE=Archetype.SOURCE|]</td>
	<tr>
|OIF(EVEN:%archetype,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;|ABILITYALL.Archetype.VISIBLE.%archetype.TYPE=Archetype.DESC|</td>
</tr>
|ENDFOR|
	</table>
|ENDIF|
<!-- STOP Archetypes Table -->

<!-- START Special Attacks Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=SpecialAttack";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table" class="block">
<tr>
<th bgcolor="black" class="ab" colspan="2">Special Attacks</th>
</tr>
|FOR,%specialAttack,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=SpecialAttack","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%specialAttack,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td valign="top" width="70%" class="font8"><b>
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialAttack.TYPE=SpecialAttack.HASASPECT.Name:Y)|
|ABILITYALL.Special Ability.VISIBLE.%specialAttack.TYPE=SpecialAttack.ASPECT.Name|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialAttack.TYPE=SpecialAttack.TYPE:Extraordinary)| 
 (Ex)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialAttack.TYPE=SpecialAttack.TYPE:Supernatural)| 
 (Su)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialAttack.TYPE=SpecialAttack.TYPE:SpellLike)| 
 (Sp)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialAttack.TYPE=SpecialAttack.TYPE:PsiLike)| 
 (Ps)
|ENDIF|
|ELSE|
|ABILITYALL.Special Ability.VISIBLE.%specialAttack.TYPE=SpecialAttack|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialAttack.TYPE=SpecialAttack.TYPE:Extraordinary)| 
 (Ex)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialAttack.TYPE=SpecialAttack.TYPE:Supernatural)| 
 (Su)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialAttack.TYPE=SpecialAttack.TYPE:SpellLike)| 
 (Sp)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialAttack.TYPE=SpecialAttack.TYPE:PsiLike)| 
 (Ps)
|ENDIF|
|ENDIF|
</b>
</td>
<td class="font8" valign="top"	width="30%" align="right">[|ABILITYALL.Special Ability.VISIBLE.%specialAttack.TYPE=SpecialAttack.SOURCE|]</td>
<tr>
|OIF(EVEN:%specialAttack,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;|ABILITYALL.Special Ability.VISIBLE.%specialAttack.TYPE=SpecialAttack.DESC|</td>
</tr>
|ENDFOR|
</table>
|ENDIF|
<!-- STOP Special Attacks Table -->

<!-- START Special Qualities Table -->
|IIF(count("ABILITIES";"CATEGORY=Special Ability";"TYPE=SpecialQuality";"VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")>0)|
<table width="100%" cellspacing="0" cellpadding="2" summary="Special Qualities Table" class="block">
<tr>
<th class="ab" colspan="2">Special Qualities</th>
</tr>
|FOR,%specialQuality,0,count("ABILITIES","CATEGORY=Special Ability","TYPE=SpecialQuality","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1,1,0|
|OIF(EVEN:%specialQuality,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|

<!-->@ABILITY	-->
<td valign="top" width="70%" class="font8"><b>
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialQuality.TYPE=SpecialQuality.HASASPECT.Name:Y)|
|ABILITYALL.Special Ability.VISIBLE.%specialQuality.TYPE=SpecialQuality.ASPECT.Name|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialQuality.TYPE=SpecialQuality.TYPE:Extraordinary)|
 (Ex)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialQuality.TYPE=SpecialQuality.TYPE:Supernatural)|
 (Su)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialQuality.TYPE=SpecialQuality.TYPE:SpellLike)|
 (Sp)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialQuality.TYPE=SpecialQuality.TYPE:PsiLike)|
 (Ps)
|ENDIF|
|ELSE|
|ABILITYALL.Special Ability.VISIBLE.%specialQuality.TYPE=SpecialQuality|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialQuality.TYPE=SpecialQuality.TYPE:Extraordinary)|
 (Ex)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialQuality.TYPE=SpecialQuality.TYPE:Supernatural)|
 (Su)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialQuality.TYPE=SpecialQuality.TYPE:SpellLike)|
 (Sp)
|ENDIF|
|IIF(ABILITYALL.Special Ability.VISIBLE.%specialQuality.TYPE=SpecialQuality.TYPE:PsiLike)|
 (Ps)
|ENDIF|
|ENDIF|
</b>
</td>
<td class="font8" valign="top"	width="30%" align="right">[|ABILITYALL.Special Ability.VISIBLE.%specialQuality.TYPE=SpecialQuality.SOURCE|]</td>
<tr>
|OIF(EVEN:%specialQuality,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
<td class="font8" valign="top"	align="indent" colspan="2">&#160;&#160;&#160;&#160;|ABILITYALL.Special Ability.VISIBLE.%specialQuality.TYPE=SpecialQuality.DESC|</td>
</tr>
|ENDFOR|
</table>
|ENDIF|
<!-- STOP Special Qualities Table -->


<!-- START Special Abilities Table -->
|%COUNT[SA]|
<table width="100%" cellspacing="0" cellpadding="2" summary="Special Abilities Table" class="block">
<tr>
<th colspan="1" class="ab">Special Abilities</th>
</tr>

|FOR,%sa,0,COUNT[SA]-1,1,0|
<tr>
<td valign="top" width="100%" class="border10">|SPECIALABILITY.%sa|</td>
</tr>
|ENDFOR|
</table>
|%|
<!-- STOP Special Abilities Table -->

<!-- START Feat Table -->
<table width="100%" cellspacing="0" cellpadding="2" summary="Feat Table" class="block">
<tr>
<th colspan="2" class="ab">Feats</th>
</tr>
|FOR,%feat,0,COUNT[FEATSALL.VISIBLE]-1,1,0|
|OIF(EVEN:%feat,<tr bgcolor="#DDDDDD" >,<tr>)|
<td valign="top" width="70%" class="font8"><b>|FEATALL.VISIBLE.%feat|</b></td>
<td class="font8" valign="top" width="30%" align="right">[|FEATALL.VISIBLE.%feat.SOURCE|]</td>
</tr>
|OIF(EVEN:%feat,<tr bgcolor="#DDDDDD" >,<tr>)|
<td class="font8" valign="top" colspan="2">&#160;&#160;&#160;&#160;|FEATALL.VISIBLE.%feat.DESC|</td>
</tr>
|ENDFOR|
</table>
|%|
</table>
<!-- STOP Feat Table -->

<!-- Start of Temporary Bonuses table --> 
|%COUNT[TEMPBONUSNAMES]| 
<tr><td> 
<table width="100%" cellspacing="0" cellpadding="2"> 
<tr> 
<td class="c9wB">Temporary Bonuses Applied</td> 
</tr> 
<tr> 
<td width="100%" class="l8"> 
|FOR,%temp,0,COUNT[TEMPBONUSNAMES]-1,1,0| 
|IIF(%temp:0)| 
|ELSE| 
&bull;&nbsp; 
|ENDIF| 
|TEMPBONUS.%temp| 
|ENDFOR| 
</td> 
</tr> 
</table> 
</td></tr> 
|%| 


<!-- ================================================================ -->
<!-- Start Racial Innate Spells -->
|FOR,%spellrace,COUNT[SPELLRACE],COUNT[SPELLRACE],1,0|
|IIF(%spellrace:0)|
	<!-- No innate spells -->
|ELSE|
<br />
|FOR,%spellbook,1,1,1,1|
|FOR,%class,0,0,1,1|
|FOR,%level,0,0,1,1|
|%SPELLLISTBOOK.%class.%level.%spellbook|
<!-- START Spell list Header Table (Racial Innate) -->
<table width="100%" cellspacing="0" cellpadding="2" summary="Spell List">
 <tr>
  <th colspan="11" class="sphead">Innate Spell-like Abilities</th>
 </tr>
</table>
<!-- End Spell List Header Table (Racial Innate) -->
<!-- Start Racial Innate Spell listing -->
<table width="100%" cellspacing="0" cellpadding="2" summary="Spell List">
|FOR,%spell,0,COUNT[SPELLSINBOOK.%class.%spellbook.%level]-1,1,0|
|OIF(EVEN:%spell,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
  <td class="spname"><b>|SPELLMEM.%class.%spellbook.%level.%spell.NAME|</b><br /></td>
  <td class="sptab">
|IIF(SPELLMEM.%class.%spellbook.%level.%spell.SAVEINFO:None)|
|ELSE|
  <i>DC:</i> |SPELLMEM.%class.%spellbook.%level.%spell.DC|<br />
|ENDIF|  
  	</td>
  <td class="sptab"><i>Save:</i> |SPELLMEM.%class.%spellbook.%level.%spell.SAVEINFO|<br /></td>
  <td class="sptab"><i>Time:</i> |SPELLMEM.%class.%spellbook.%level.%spell.CASTINGTIME|, 
|IIF(SPELLMEM.%class.%spellbook.%level.%spell.TIMES:At Will)|
at will
|ELSE|
|SPELLMEM.%class.%spellbook.%level.%spell.TIMES|/|SPELLMEM.%class.%spellbook.%level.%spell.TIMEUNIT|
|ENDIF|
<br /></td>
  <td class="sptab"><i>Duration:</i> |SPELLMEM.%class.%spellbook.%level.%spell.DURATION|<br /></td>
  <td class="sptab"><i>Rng:</i> |SPELLMEM.%class.%spellbook.%level.%spell.RANGE|<br /></td>
  <td class="sptab"><i>Comp:</i> |SPELLMEM.%class.%spellbook.%level.%spell.COMPONENTS|<br /></td>
  <td class="sptab"><i>SR:</i> |SPELLMEM.%class.%spellbook.%level.%spell.SR|<br /></td>
  <td class="sptab"><i>School:</i> |SPELLMEM.%class.%spellbook.%level.%spell.SCHOOL|<br /></td>
 </tr>
|OIF(EVEN:%spell,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
  <td colspan="7" class="sptab1"><i>Effect:</i>&nbsp;&nbsp;|SPELLMEM.%class.%spellbook.%level.%spell.EFFECT|<br /></td>
  <td colspan="2" class="sptab2"><i>Source:</i>&nbsp;&nbsp;|SPELLMEM.%class.%spellbook.%level.%spell.SOURCEPAGE|<br /></td>
 </tr>
|OIF(EVEN:%spell,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
  <td colspan="7" class="sptab1"><i>Target Area:</i>&nbsp;&nbsp; |SPELLMEM.%class.%spellbook.%level.%spell.TARGET|<br /></td>
  <td colspan="2" class="sptab2"><i>Caster Level:</i> |SPELLMEM.%class.%spellbook.%level.%spell.CASTERLEVEL|<br /></td>
</tr>
|ENDFOR|
 <tr>
  <td colspan="9" bgcolor="black"><br /></td>
 </tr>
</table>
|%|
|ENDFOR|
|ENDFOR|
|ENDFOR|
<!-- End Racial Innate Spells -->
<!-- Start Other Innate Spells -->
|FOR,%spellbook,2,COUNT[SPELLBOOKS]-1,1,0|
|FOR,%class,0,0,1,1|
|FOR,%level,0,0,1,1|
|%SPELLLISTBOOK.%class.%level.%spellbook|
<!-- START Spell list Header Table (Other Innate) -->
<br />
<table width="100%" cellspacing="0" cellpadding="2" summary="|SPELLBOOKNAME.%spellbook| Spell-like Abilities">
 <tr>
  <th colspan="9" class="sphead">|SPELLBOOKNAME.%spellbook| Spell-like Abilities</th>
 </tr>
</table>
<table width="100%" cellspacing="0" cellpadding="2" summary="Spell List">
|FOR,%spell,0,COUNT[SPELLSINBOOK.%class.%spellbook.%level]-1,1,0|
|OIF(EVEN:%spell,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
  <td class="spname"><b>|SPELLMEM.%class.%spellbook.%level.%spell.NAME|</b><br /></td>
  <td class="sptab">
|IIF(SPELLMEM.%class.%spellbook.%level.%spell.SAVEINFO:None)|
|ELSE|
  <i>DC:</i> |SPELLMEM.%class.%spellbook.%level.%spell.DC|<br />
|ENDIF|  
  	</td>
  <td class="sptab"><i>Save:</i> |SPELLMEM.%class.%spellbook.%level.%spell.SAVEINFO|<br /></td>
  <td class="sptab"><i>Time:</i> |SPELLMEM.%class.%spellbook.%level.%spell.CASTINGTIME|, 
|IIF(SPELLMEM.%class.%spellbook.%level.%spell.TIMES:At Will)|
at will
|ELSE|
|SPELLMEM.%class.%spellbook.%level.%spell.TIMES|/|SPELLMEM.%class.%spellbook.%level.%spell.TIMEUNIT|
|ENDIF|
<br /></td>
  <td class="sptab"><i>Duration:</i> |SPELLMEM.%class.%spellbook.%level.%spell.DURATION|<br /></td>
  <td class="sptab"><i>Rng:</i> |SPELLMEM.%class.%spellbook.%level.%spell.RANGE|<br /></td>
  <td class="sptab"><i>Comp:</i> |SPELLMEM.%class.%spellbook.%level.%spell.COMPONENTS|<br /></td>
  <td class="sptab"><i>SR:</i> |SPELLMEM.%class.%spellbook.%level.%spell.SR|<br /></td>
  <td class="sptab"><i>School:</i> |SPELLMEM.%class.%spellbook.%level.%spell.SCHOOL|<br /></td>
 </tr>
|OIF(EVEN:%spell,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
  <td colspan="7" class="sptab1"><i>Effect:</i>&nbsp;&nbsp;|SPELLMEM.%class.%spellbook.%level.%spell.EFFECT|<br /></td>
  <td colspan="2" class="sptab2"><i>Source:</i>&nbsp;&nbsp;|SPELLMEM.%class.%spellbook.%level.%spell.SOURCEPAGE|<br /></td>
 </tr>
|OIF(EVEN:%spell,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
  <td colspan="7" class="sptab1"><i>Target Area:</i>&nbsp;&nbsp; |SPELLMEM.%class.%spellbook.%level.%spell.TARGET|<br /></td>
  <td class="sptab2" colspan="2"><i>Caster Level:</i> |SPELLMEM.%class.%spellbook.%level.%spell.CASTERLEVEL|<br /></td>
 </tr>
|ENDFOR|
 <tr>
  <td colspan="9" class="ablable"><br /></td>
 </tr>
</table>
|%|
|ENDFOR|
|ENDFOR|
|ENDFOR|
<!-- End Other Innate Spells -->
|ENDIF|
|ENDFOR|
<!-- End Innate Spells -->
|FOR,%spellbook,0,0,1,0|
<br />
|FOR,%class,COUNT[SPELLRACE],COUNT[SPELLRACE]+COUNT[CLASSES]-1,1,1|
|%SPELLLISTCLASS.%class|
<!-- START Spell list Header Table (Known) -->
<table width="100%" cellspacing="0" cellpadding="2" summary="Spell List">
 <tr>
  <td colspan="|MAXSPELLLEVEL.%class+2.INTVAL|" class="sphead"><b>|SPELLLISTCLASS.%class|
|IIF(SPELLLISTTYPE.%class:Psionic)|
Powers
|ELSE|
Spells
|ENDIF|
</b></td>
 </tr>
 <tr>
  <td bgcolor="black" class="sptop"><b>LEVEL</b></td>
|FOR,%level,0,MAXSPELLLEVEL.%class,1,1|
  <td bgcolor="black" class="sptop"><b>%level</b></td>
|ENDFOR|
 </tr>
 <tr>
  <td class="sptab"><b>KNOWN</b></td>
|FOR,%level,0,MAXSPELLLEVEL.%class,1,1|
  <td class="sptab"><b>|SPELLLISTKNOWN.%class.%level|</b></td>
|ENDFOR|
 </tr>
 <tr bgcolor="#DDDDDD">
  <td class="sptab"><b>PER DAY</b></td>
|FOR,%level,0,MAXSPELLLEVEL.%class,1,1|
  <td class="sptab"><b>|SPELLLISTCAST.%class.%level|</b></td>
|ENDFOR|
 </tr>
</table>
<!-- End Spell List Header Table (Known) -->
<!-- Start Known Spells -->
<table width="100%" cellspacing="0" cellpadding="2" summary="Spell List">
|FOR,%level,0,MAXSPELLLEVEL.%class,1,1|
|FOR,%spellcount,COUNT[SPELLSINBOOK.%class.%spellbook.%level],COUNT[SPELLSINBOOK.%class.%spellbook.%level],1,0|
|IIF(%spellcount:0)|
|ELSE|
 <tr>
  <td colspan="10" class="splevel"><b>LEVEL %level</b></td>
 </tr>
|IIF(SPELLLISTMEMORIZE.%class)|
|ELSE|
 <tr>
  <td colspan="10" class="splevel"><b>
|FOR.0,COUNT[SPELLLISTCAST.%class.%level],1,1,1,&#9744;,,,0|
  </b></td>
 </tr>
|ENDIF|
|FOR,%spell,0,COUNT[SPELLSINBOOK.%class.%spellbook.%level]-1,1,0|
|OIF(EVEN:%spell,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
  <td class="spname"><b>|SPELLMEM.%class.%spellbook.%level.%spell.BONUSSPELL||SPELLMEM.%class.%spellbook.%level.%spell.NAME|</b><br /></td>
  <td class="sptab">
|IIF(SPELLMEM.%class.%spellbook.%level.%spell.SAVEINFO:None)|
|ELSE|
  <i>DC:</i> |SPELLMEM.%class.%spellbook.%level.%spell.DC|<br />
|ENDIF|
  	</td>
  <td class="sptab"><i>Save:</i> |SPELLMEM.%class.%spellbook.%level.%spell.SAVEINFO|<br /></td>
  <td class="sptab"><i>Time:</i> |SPELLMEM.%class.%spellbook.%level.%spell.CASTINGTIME|<br /></td>
  <td class="sptab"><i>Duration:</i> |SPELLMEM.%class.%spellbook.%level.%spell.DURATION|<br /></td>
  <td class="sptab"><i>Rng:</i> |SPELLMEM.%class.%spellbook.%level.%spell.RANGE|<br /></td>
  <td class="sptab"><i>Comp:</i> |SPELLMEM.%class.%spellbook.%level.%spell.COMPONENTS|<br /></td>
  <td class="sptab"><i>SR:</i> |SPELLMEM.%class.%spellbook.%level.%spell.SR|<br /></td>
  <td class="sptab"><i>School:</i> |SPELLMEM.%class.%spellbook.%level.%spell.SCHOOL|<br /></td>
  <td class="sptab">
|IIF(SPELLLISTTYPE.%class:Psionic)|
|FOR,%ppcost,(%level*2)-1,(%level*2)-1,1,1|
|IIF(%ppcost:-1)|
		<i>PP:</i> 0/1
|ELSE|
		<i>PP:</i> %ppcost
|ENDIF|
|ENDFOR|
  </td>
|ELSE|
|ENDIF|
 </tr>
|OIF(EVEN:%spell,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
  <td colspan="8" class="sptab1"><i>Effect:</i>&nbsp;&nbsp;|SPELLMEM.%class.%spellbook.%level.%spell.EFFECT|<br /></td>
  <td colspan="2" class="sptab2"><i>Source:</i>&nbsp;&nbsp;|SPELLMEM.%class.%spellbook.%level.%spell.SOURCEPAGE|<br /></td>
 </tr>
|OIF(EVEN:%spell,<tr bgcolor="#DDDDDD">,<tr bgcolor="white">)|
  <td colspan="8" class="sptab1"><i>Target Area:</i>&nbsp;&nbsp; |SPELLMEM.%class.%spellbook.%level.%spell.TARGET|
|IIF(SPELLMEM.%class.%spellbook.%level.%spell.SPELLPOINTCOST:0)|
|ELSE|
  &nbsp;&nbsp; <i>Spell Point Cost:</i>&nbsp;&nbsp; |SPELLMEM.%class.%spellbook.%level.%spell.SPELLPOINTCOST|
|ENDIF|
<br /></td>
  <td colspan="2" class="sptab2"><i>Caster Level:</i>&nbsp;&nbsp; |SPELLMEM.%class.%spellbook.%level.%spell.CASTERLEVEL|<br /></td>
 </tr>
|ENDFOR|
|ENDIF|
|ENDFOR|
|ENDFOR|
 <tr>
  <td colspan="10" class="ablable" align="left">* = Domain/Specialty Spell</td>
 </tr>
</table>
<br />
|%|
|ENDFOR|
|ENDFOR|
<!-- End Known Spells -->
<!-- ================================================================ -->
<!-- Start Prepared Spells -->
|FOR,%memorised,COUNT[SPELLRACE]+COUNT[SPELLBOOKS]-2,COUNT[SPELLRACE]+COUNT[SPELLBOOKS]-2,1,0|
|IIF(%memorised:0)|
|ELSE|
<!-- Start Innate Prepared -->
|FOR,%spellrace,COUNT[SPELLRACE],COUNT[SPELLRACE],1,0|
|IIF(%spellrace:0)|
|ELSE|
|FOR,%spellbook,1,1,1,0|
|FOR,%class,0,0,1,0|
|FOR,%level,0,0,1,0|
|%SPELLLISTBOOK.%class.%level.%spellbook|
<br />
<table width="100%" cellspacing="0" cellpadding="2" summary="Racial Innate Spell List">
 <tr>
  <th colspan="11" class="sphead">Racial Innate</th>
 </tr>
 <tr>
  <td valign="top">
<table>
|FOR,%spell,0,COUNT[SPELLSINBOOK.%class.%spellbook.%level]-1,1,0|
|IIF(SPELLMEM.%class.%spellbook.%level.%spell.TIMES:At Will)|
<tr>
 <td align="right" class="font10">At Will</td>
|ELSE|
<tr>
 <td align="right" class="font10">
|FOR.0,SPELLMEM.%class.%spellbook.%level.%spell.TIMES,1,&#9744;,NONE,NONE,2|
 </td>
|ENDIF|
 <td class="font10"><b>|SPELLMEM.%class.%spellbook.%level.%spell.NAME|</b>
|IIF(SPELLMEM.%class.%spellbook.%level.%spell.SAVEINFO:None)|
|ELSE|
  (DC:|SPELLMEM.%class.%spellbook.%level.%spell.DC|)
|ENDIF|
</td>
</tr>
|ENDFOR|
</table>
  </td>
 </tr>
 <tr>
  <td colspan="11" class="ablable"><br /></td>
 </tr>
</table>
|%|
|ENDFOR|
|ENDFOR|
|ENDFOR|
<br />

|FOR,%spellbook,2,COUNT[SPELLBOOKS]-1,1,0|
|FOR,%class,0,0,1,1|
|FOR,%level,0,0,1,1|
|%SPELLLISTBOOK.%class.%level.%spellbook|
<table width="100%" cellspacing="0" cellpadding="2" summary="Spell List">
 <tr>
  <th colspan="11" class="sphead">|SPELLBOOKNAME.%spellbook| Spells</th>
 </tr>
  <td valign="top">
<table>
|FOR,%spell,0,COUNT[SPELLSINBOOK.%class.%spellbook.%level]-1,1,0|
|IIF(SPELLMEM.%class.%spellbook.%level.%spell.TIMES:At Will)|
<tr>
 <td align="right" class="font10">At Will</td>
|ELSE|
<tr>
 <td align="right" class="font10">
|FOR.0,SPELLMEM.%class.%spellbook.%level.%spell.TIMES,1,&#9744;,NONE,NONE,2|
 </td>
|ENDIF|
 <td class="font10"><b>|SPELLMEM.%class.%spellbook.%level.%spell.NAME|</b>
|IIF(SPELLMEM.%class.%spellbook.%level.%spell.SAVEINFO:None)|
|ELSE|
  (DC:|SPELLMEM.%class.%spellbook.%level.%spell.DC|)
|ENDIF|
</td>
</tr>
|ENDFOR|
</table>
  </td>
 </tr>
 <tr>
  <td colspan="11" class="ablable"><br /></td>
 </tr>
</table>
|%|
|ENDFOR|
|ENDFOR|
|ENDFOR|
<br />
|ENDIF|
|ENDFOR|
<!-- End Innate Prepared -->


<!-- Start Regular Prepared -->
|FOR,%spellbook,2,COUNT[SPELLBOOKS]-1,1,0|
|FOR,%foo,COUNT[SPELLRACE],COUNT[SPELLRACE],1,1|
|FOR,%bar,COUNT[SPELLSINBOOK0.%spellbook.0],COUNT[SPELLSINBOOK0.%spellbook.0],1,1|
|IIF(%foo:0.OR.%bar:0)|
<!-- Either we do not have a innate race, or if we do we do not have any 0 level spell for the innate race -->
<br />
<table width="100%" cellspacing="0" cellpadding="2" summary="Spell Book |SPELLBOOKNAME.%spellbook|">
 <tr>
  <th colspan="11" class="sphead">|SPELLBOOKNAME.%spellbook|</th>
 </tr>
|FOR,%class,COUNT[SPELLRACE],COUNT[SPELLRACE]+COUNT[CLASSES]-1,1,1|
|%SPELLLISTCLASS.%class|
 <tr>
  <td align="center" bgcolor="#DDDDDD" colspan="11" class="font10">|SPELLLISTCLASS.%class|</td>
 </tr>
 <tr>
|FOR,%level,0,4,1,1|
  <td valign="top">
|FOR,%spelllevelcount,COUNT[SPELLSINBOOK.%class.%spellbook.%level],COUNT[SPELLSINBOOK.%class.%spellbook.%level],1,0|
|IIF(%spelllevelcount:0)|
<!-- no memorized spells for SPELLSINBOOK.%class %spellbook %level -->
|ELSE|
<table summary="Spell List">
<tr>
 <td valign="top" align="center" colspan="2" class="font10"><u>Level %level</u></td>
</tr>
|FOR,%spell,0,COUNT[SPELLSINBOOK.%class.%spellbook.%level]-1,1,0|
<tr>
 <td align="right" class="font10">
|FOR.0,SPELLMEM.%class.%spellbook.%level.%spell.TIMES,1,&#9744;,NONE,NONE,1|
 </td>
 <td class="font10"><b>|SPELLMEM.%class.%spellbook.%level.%spell.BONUSSPELL||SPELLMEM.%class.%spellbook.%level.%spell.NAME|</b>
|IIF(SPELLMEM.%class.%spellbook.%level.%spell.SAVEINFO:None)|
|ELSE|
  (DC:|SPELLMEM.%class.%spellbook.%level.%spell.DC|)
|ENDIF|
</td>
</tr>
|ENDFOR|
</table>
|ENDIF|
|ENDFOR|
  </td>
|ENDFOR|
<tr>
|FOR,%level,5,9,1,1|
  <td valign="top">
|FOR,%spelllevelcount,COUNT[SPELLSINBOOK.%class.%spellbook.%level],COUNT[SPELLSINBOOK.%class.%spellbook.%level],1,0|
|IIF(%spelllevelcount:0)|
<!-- no memorized spells for SPELLSINBOOK.%class %spellbook %level -->
|ELSE|
<table summary="Spell List">
<tr>
 <td valign="top" align="center" colspan="2" class="font10"><u>Level %level</u></td>
</tr>
|FOR,%spell,0,COUNT[SPELLSINBOOK.%class.%spellbook.%level]-1,1,0|
<tr>
 <td align="right" class="font10">
|FOR.0,SPELLMEM.%class.%spellbook.%level.%spell.TIMES,1,&#9744;,NONE,NONE,1|
 </td>
 <td class="font10"><b>|SPELLMEM.%class.%spellbook.%level.%spell.BONUSSPELL||SPELLMEM.%class.%spellbook.%level.%spell.NAME|</b>
|IIF(SPELLMEM.%class.%spellbook.%level.%spell.SAVEINFO:None)|
|ELSE|
  (DC:|SPELLMEM.%class.%spellbook.%level.%spell.DC|)
|ENDIF|
</td>
</tr>
|ENDFOR|
</table>
|ENDIF|
|ENDFOR|
  </td>
<!-- END FOR,%spellcount,COUNT[SPELLSINBOOK.%class.%spellbook.0],COUNT[SPELLSINBOOK.%class.%spellbook.0],1,0 -->
|ENDFOR|
<!-- END SPELLLISTCLASS.%class -->
|%|
<!-- END FOR,%class,COUNT[SPELLRACE],COUNT[SPELLRACE]+COUNT[CLASSES]-1,1,1 -->
|ENDFOR|
 <tr>
  <td colspan="11" class="ablable">* = Domain/Specialty Spell</td>
 </tr>
</table>
|ELSE|
|ENDIF|
<!-- END FOR,%bar,COUNT[SPELLSINBOOK0.%spellbook.0],COUNT[SPELLSINBOOK0.%spellbook.0],1,1 -->
|ENDFOR|
<!-- END FOR,%foo,COUNT[SPELLRACE],COUNT[SPELLRACE],1,1 -->
|ENDFOR|
<!-- END FOR,%spellbook,2,COUNT[SPELLBOOKS]-1,1,0 -->
|ENDFOR|
<!-- ### END class Spellbook memorized spells ### -->
<!-- START FALSE IIF(%memorised:0) -->
|ENDIF|
|ENDFOR|
<!-- ### END MEMORIZED ### -->

<!-- End Prepared Spells -->
<!-- ================================================================= -->
<!-->|%BIO|-->
<br />
<a name="Bio"></a>
<!-- START Bio Table -->
<table width="100%" cellspacing="0" cellpadding="2">
 <tr>
  <td colspan="2" class="font14">|NAME| |%FOLLOWEROF|- |FOLLOWEROF| |%| |%BIO|></td>
 </tr>
 <tr>
  <td class="border" height="400" width="1%"><img src="file://localhost/|PORTRAIT|" height="400" alt="|NAME|'s portrait" /></td>
  <td valign="top" width="99%">
<table width="100%" cellspacing="0" cellpadding="2">
<tr><td class="biodata">|RACE|<br/></td></tr>
<tr><td class="topline">RACE</td></tr>
<tr><td class="biodata">|AGE|<br/></td></tr>
<tr><td class="topline">AGE</td></tr>
<tr><td class="biodata">|HEIGHT|<br/></td></tr>
<tr><td class="topline">HEIGHT</td></tr>
<tr><td class="biodata">|WEIGHT|<br/></td></tr>
<tr><td class="topline">WEIGHT</td></tr>
<tr><td class="biodata">|COLOR.EYE|<br/></td></tr>
<tr><td class="topline">EYE COLOR</td></tr>
<tr><td class="biodata">|COLOR.SKIN|<br/></td></tr>
<tr><td class="topline">SKIN COLOR</td></tr>
<tr><td class="biodata">|COLOR.HAIR|<br/></td></tr>
<tr><td class="topline">HAIR COLOR</td></tr>
<tr><td class="biodata">|LENGTH.HAIR|<br/></td></tr>
<tr><td class="topline">HAIR LENGTH</td></tr>
<tr><td class="biodata">|PHOBIAS|<br/></td></tr>
<tr><td class="topline">PHOBIAS</td></tr>
<tr><td class="biodata">|PERSONALITY1| |PERSONALITY2|<br/></td></tr>
<tr><td class="topline">PERSONALITY TRAITS</td></tr>
<tr><td class="biodata">|INTERESTS|<br/></td></tr>
<tr><td class="topline">INTERESTS</td></tr>
<tr><td class="biodata">|SPEECHTENDENCY|, |CATCHPHRASE|<br/></td></tr>
<tr><td class="topline">SPOKEN STYLE</td></tr>
</table>
<!-- STOP BIO Table -->
  </td>
 </tr>
 <tr><td class="borderbottom" colspan="2" class="font14">Description</td></tr>
 <tr><td colspan="2" class="font10"><span class="notes">|DESC|</span></td></tr>
 <tr><td class="borderbottom" colspan="2" class="font14">Home</td></tr>
 <tr><td colspan="2" class="font10">|%REGION| From |REGION|. |%| |%BIO| |RESIDENCE|, |LOCATION|<br/></td></tr>
 <tr><td class="borderbottom" colspan="2" class="font14">Biography</td></tr>
 <tr><td colspan="2" class="font10"><span class="notes">|BIO|</span></td></tr>
</table>
<!-->|%|-->
|%NOTES|
<br />




<table width="100%" cellspacing="0" cellpadding="5">
 <tr>
  <td colspan="2" class="notehead"><b>Notes</b></td>
 </tr>
|FOR,%note,0,COUNT[NOTES]-1,1,1|
 <tr>
  <td class="notetab" width="20%"><span class="notes">|NOTE.%note.NAME|</span></td><td class="notetab" width="80%"><span class="notes">|NOTE.%note.VALUE|</span></td>
 </tr>
|ENDFOR|
</table>
|%|
<br /><center><font size="-1">Created using PCGen |EXPORT.VERSION| on |EXPORT.DATE|</font></center>
</body>
</html>

