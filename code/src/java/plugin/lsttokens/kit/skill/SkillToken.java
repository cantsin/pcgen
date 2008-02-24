/*
 * SkillToken.java
 * Copyright 2006 (C) Aaron Divinsky <boomer70@yahoo.com>
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
 * Created on March 6, 2006
 *
 * Current Ver: $Revision$
 * Last Editor: $Author$
 * Last Edited: $Date$
 */

package plugin.lsttokens.kit.skill;

import java.util.Collection;
import java.util.StringTokenizer;

import pcgen.cdom.base.CDOMReference;
import pcgen.cdom.base.Constants;
import pcgen.cdom.base.ReferenceUtilities;
import pcgen.cdom.inst.CDOMSkill;
import pcgen.cdom.kit.CDOMKitSkill;
import pcgen.core.kit.KitSkill;
import pcgen.persistence.lst.KitSkillLstToken;
import pcgen.rules.context.LoadContext;
import pcgen.rules.persistence.TokenUtilities;
import pcgen.rules.persistence.token.AbstractToken;
import pcgen.rules.persistence.token.CDOMSecondaryToken;
import pcgen.util.Logging;

/**
 * SKILL for Kit Skill
 */
public class SkillToken extends AbstractToken implements KitSkillLstToken,
		CDOMSecondaryToken<CDOMKitSkill>
{
	/**
	 * Gets the name of the tag this class will parse.
	 * 
	 * @return Name of the tag this class handles
	 */
	@Override
	public String getTokenName()
	{
		return "SKILL";
	}

	/**
	 * parse
	 * 
	 * @param kitSkill
	 *            KitSkill
	 * @param value
	 *            String
	 * @return boolean
	 */
	public boolean parse(KitSkill kitSkill, String value)
	{
		Logging.errorPrint("Ignoring second SKILL tag \"" + value
				+ "\" in Kit.");
		return false;
	}

	public Class<CDOMKitSkill> getTokenClass()
	{
		return CDOMKitSkill.class;
	}

	public String getParentToken()
	{
		return "*KITTOKEN";
	}

	public boolean parse(LoadContext context, CDOMKitSkill kitSkill,
			String value)
	{
		if (isEmpty(value) || hasIllegalSeparator('|', value))
		{
			return false;
		}

		StringTokenizer tok = new StringTokenizer(value, Constants.PIPE);

		while (tok.hasMoreTokens())
		{
			String tokText = tok.nextToken();
			kitSkill.addSkill(TokenUtilities.getTypeOrPrimitive(context,
					CDOMSkill.class, tokText));
		}
		return true;
	}

	public String[] unparse(LoadContext context, CDOMKitSkill kitSkill)
	{
		Collection<CDOMReference<CDOMSkill>> ref = kitSkill.getSkills();
		if (ref == null)
		{
			return null;
		}
		return new String[] { ReferenceUtilities.joinLstFormat(ref,
				Constants.PIPE) };
	}
}
