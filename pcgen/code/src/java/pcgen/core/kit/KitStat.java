/*
 * KitStat.java
 * Copyright 2005 (C) Aaron Divinsky <boomer70@yahoo.com>
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
 * Created on September 20, 2005, 1040h
 *
 * $Id$
 */
package pcgen.core.kit;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import pcgen.base.formula.Formula;
import pcgen.cdom.base.Constants;
import pcgen.cdom.enumeration.ObjectKey;
import pcgen.core.Kit;
import pcgen.core.PCClass;
import pcgen.core.PCStat;
import pcgen.core.PlayerCharacter;
import pcgen.core.StatList;
import pcgen.core.pclevelinfo.PCLevelInfo;

/**
 * KitStat
 *
 * @author boomer70
 */
public class KitStat extends BaseKit
{
	private Map<PCStat, Formula> statMap = new HashMap<PCStat, Formula>();

	private transient List<PCStat> theStat;

	@Override
	public String toString()
	{
		StringBuilder sb = new StringBuilder(100);
		boolean needsPipe = false;
		for (Map.Entry<PCStat, Formula> me : statMap.entrySet())
		{
			if (needsPipe)
			{
				sb.append(Constants.PIPE);
			}
			needsPipe = true;
			sb.append(me.getKey().getAbb()).append('=').append(me.getValue());
		}
		return sb.toString();
	}

	@Override
	public boolean testApply(Kit aKit, PlayerCharacter aPC,
		List<String> warnings)
	{
		theStat = new ArrayList<PCStat>();
		for (Map.Entry<PCStat, Formula> me : statMap.entrySet())
		{
			int sVal = me.getValue().resolve(aPC, "").intValue();
			final StatList statList = aPC.getStatList();
			for (int i = 0; i < statList.size(); i++)
			{
				final PCStat currentStat = statList.getStatAt(i);
				if (!aPC.isNonAbility(i)
					&& currentStat.getAbb().equals(me.getKey().getAbb()))
				{
					currentStat.setBaseScore(sVal);
					theStat.add(currentStat.clone());
					if ("INT".equals(currentStat.getAbb()))
					{
						recalculateSkillPoints(aPC);
					}
					break;
				}
			}
		}
		return true;
	}

	@Override
	public void apply(PlayerCharacter aPC)
	{
		final StatList aStatList = aPC.getStatList();
		for (Iterator<PCStat> stat = aStatList.iterator(); stat.hasNext();)
		{
			final PCStat currentStat = stat.next();
			for (PCStat setStat : theStat)
			{
				if (currentStat.getAbb().equals(setStat.getAbb()))
				{
					currentStat.setBaseScore(setStat.getBaseScore());
					if ("INT".equals(currentStat.getAbb()))
					{
						recalculateSkillPoints(aPC);
					}
					break;
				}
			}
		}
	}

	@Override
	public String getObjectName()
	{
		return "Stats";
	}

	private void recalculateSkillPoints(PlayerCharacter aPC)
	{
		final List<PCClass> classes = aPC.getClassList();
		aPC.calcActiveBonuses();
		if (classes != null && classes.size() != 0)
		{
			aPC.setSkillPoints(0);
			for (PCClass pcClass : classes)
			{
				pcClass.setSkillPool(0);
				if (aPC.getLevelInfoSize() > 0
					&& pcClass.getSafe(ObjectKey.MOD_TO_SKILLS))
				{
					final List<PCLevelInfo> pclList = aPC.getLevelInfo();
					for (int j = 0; j < pclList.size(); j++)
					{
						final PCLevelInfo pcl = pclList.get(j);
						if (pcl.getClassKeyName().equals(pcClass.getKeyName()))
						{
							final int spMod =
									pcClass.recalcSkillPointMod(aPC, j + 1);

							pcl.setSkillPointsGained(spMod);
							pcl.setSkillPointsRemaining(pcl
								.getSkillPointsGained());
							pcClass.setSkillPool(pcClass.skillPool() + spMod);

							aPC.setSkillPoints(spMod + aPC.getSkillPoints());
						}
					}
				}
			}
		}
	}

	public void addStat(PCStat stat, Formula statValue)
	{
		if (statMap.put(stat, statValue) != null)
		{
			throw new IllegalArgumentException("Cannot redefine stat: " + stat);
		}
	}
}
