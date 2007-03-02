/*
 * Copyright 2006-2007 (C) Tom Parker <thpr@users.sourceforge.net>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 *
 * Current Ver: $Revision$
 * Last Editor: $Author$
 * Last Edited: $Date$
 */
package plugin.lsttokens.race;

import java.util.Set;
import java.util.SortedSet;
import java.util.StringTokenizer;
import java.util.TreeSet;

import pcgen.cdom.base.CDOMObject;
import pcgen.cdom.base.CDOMReference;
import pcgen.cdom.base.Constants;
import pcgen.cdom.content.ChoiceSet;
import pcgen.cdom.graph.PCGraphEdge;
import pcgen.core.Race;
import pcgen.core.WeaponProf;
import pcgen.persistence.LoadContext;
import pcgen.persistence.lst.RaceLstToken;
import pcgen.persistence.lst.utils.TokenUtilities;
import pcgen.util.Logging;

/**
 * Class deals with WEAPONBONUS Token
 */
public class WeaponbonusToken implements RaceLstToken
{
	private static final Class<WeaponProf> WEAPONPROF_CLASS = WeaponProf.class;

	public String getTokenName()
	{
		return "WEAPONBONUS"; //$NON-NLS-1$
	}

	public boolean parse(Race race, String value)
	{
		final StringTokenizer aTok =
				new StringTokenizer(value, Constants.PIPE, false);

		while (aTok.hasMoreTokens())
		{
			race.addWeaponProfBonus(aTok.nextToken());
		}

		return true;
	}

	public boolean parse(LoadContext context, Race race, String value)
	{
		return parseWeaponBonus(context, race, value);
	}

	public boolean parseWeaponBonus(LoadContext context, CDOMObject obj,
		String value)
	{
		if (value.charAt(0) == '|')
		{
			Logging.errorPrint(getTokenName()
				+ " arguments may not start with | : " + value);
			return false;
		}
		if (value.charAt(value.length() - 1) == '|')
		{
			Logging.errorPrint(getTokenName()
				+ " arguments may not end with | : " + value);
			return false;
		}
		if (value.indexOf("||") != -1)
		{
			Logging.errorPrint(getTokenName()
				+ " arguments uses double separator || : " + value);
			return false;
		}

		StringTokenizer tok = new StringTokenizer(value, Constants.PIPE);

		ChoiceSet<CDOMReference<WeaponProf>> cl =
				new ChoiceSet<CDOMReference<WeaponProf>>(1, tok.countTokens());
		while (tok.hasMoreTokens())
		{
			CDOMReference<WeaponProf> ref =
					TokenUtilities.getTypeOrPrimitive(context,
						WEAPONPROF_CLASS, tok.nextToken());
			if (ref == null)
			{
				return false;
			}
			cl.addChoice(ref);
		}
		context.graph.linkObjectIntoGraph(getTokenName(), obj, cl);
		return true;
	}

	public String unparse(LoadContext context, Race race)
	{
		Set<PCGraphEdge> choiceEdges =
				context.graph.getChildLinksFromToken(getTokenName(), race,
					ChoiceSet.class);
		if (choiceEdges == null || choiceEdges.isEmpty())
		{
			return null;
		}
		StringBuilder sb = new StringBuilder();
		SortedSet<CDOMReference<WeaponProf>> set =
				new TreeSet<CDOMReference<WeaponProf>>(
					TokenUtilities.REFERENCE_SORTER);
		for (PCGraphEdge edge : choiceEdges)
		{
			set.clear();
			sb.append(getTokenName()).append(':');
			ChoiceSet<CDOMReference<WeaponProf>> cl =
					(ChoiceSet<CDOMReference<WeaponProf>>) edge.getSinkNodes()
						.get(0);
			set.addAll(cl.getSet());
			boolean needBar = false;
			for (CDOMReference<WeaponProf> ref : set)
			{
				if (needBar)
				{
					sb.append(Constants.PIPE);
				}
				needBar = true;
				sb.append(ref.getLSTformat());
			}
		}
		return sb.toString();
	}
}
