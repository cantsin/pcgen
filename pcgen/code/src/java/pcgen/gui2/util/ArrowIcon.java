/*
 * ArrowIcon.java
 * Copyright 2011 Connor Petty <cpmeister@users.sourceforge.net>
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
 * Created on Oct 2, 2011, 6:45:07 PM
 */
package pcgen.gui2.util;

import java.awt.Color;
import java.awt.Component;
import java.awt.Graphics;
import javax.swing.Icon;
import javax.swing.SwingConstants;
import javax.swing.UIManager;

/**
 * This class contains a lot of code taken from javax.swing.plaf.basic.BasicArrowButton.
 * As such this icon draws the arrow that you find on arrow buttons.
 * @author Connor Petty <cpmeister@users.sourceforge.net>
 */
public class ArrowIcon implements Icon, SwingConstants
{

	private Color shadow;
	private Color darkShadow;
	private Color highlight;
	private int direction;
	private int size;

	public ArrowIcon(int direction, int size, Color background, Color shadow,
					 Color darkShadow, Color highlight)
	{
		super();
		this.shadow = shadow;
		this.darkShadow = darkShadow;
		this.highlight = highlight;
		this.direction = direction;
		this.size = size;
	}

	public ArrowIcon(int direction, int size)
	{
		this(direction, size, UIManager.getColor("control"), UIManager.getColor("controlShadow"),
			 UIManager.getColor("controlDkShadow"), UIManager.getColor("controlLtHighlight"));
	}

	@Override
	public void paintIcon(Component c, Graphics g, int x, int y)
	{
		paintTriangle(g, x, y, size, direction, true);
	}

	@Override
	public int getIconWidth()
	{
		return size;
	}

	@Override
	public int getIconHeight()
	{
		return size;
	}

	/**
	 * Paints a triangle.
	 *
	 * @param g the {@code Graphics} to draw to
	 * @param x the x coordinate
	 * @param y the y coordinate
	 * @param triangleSize the size of the triangle to draw
	 * @param triangleDir the direction in which to draw the arrow;
	 *        one of {@code SwingConstants.NORTH},
	 *        {@code SwingConstants.SOUTH}, {@code SwingConstants.EAST} or
	 *        {@code SwingConstants.WEST}
	 * @param isEnabled whether or not the arrow is drawn enabled
	 * @see javax.swing.plaf.basic.BasicArrowButton
	 */
	public void paintTriangle(Graphics g, int x, int y, int triangleSize,
							  int triangleDir, boolean isEnabled)
	{
		Color oldColor = g.getColor();
		int mid, i, j;

		j = 0;
		triangleSize = Math.max(triangleSize, 2);
		mid = (triangleSize / 2) - 1;

		g.translate(x, y);
		if (isEnabled)
		{
			g.setColor(darkShadow);
		}
		else
		{
			g.setColor(shadow);
		}

		switch (triangleDir)
		{
			case NORTH:
				for (i = 0; i < triangleSize; i++)
				{
					g.drawLine(mid - i, i, mid + i, i);
				}
				if (!isEnabled)
				{
					g.setColor(highlight);
					g.drawLine(mid - i + 2, i, mid + i, i);
				}
				break;
			case SOUTH:
				if (!isEnabled)
				{
					g.translate(1, 1);
					g.setColor(highlight);
					for (i = triangleSize - 1; i >= 0; i--)
					{
						g.drawLine(mid - i, j, mid + i, j);
						j++;
					}
					g.translate(-1, -1);
					g.setColor(shadow);
				}

				j = 0;
				for (i = triangleSize - 1; i >= 0; i--)
				{
					g.drawLine(mid - i, j, mid + i, j);
					j++;
				}
				break;
			case WEST:
				for (i = 0; i < triangleSize; i++)
				{
					g.drawLine(i, mid - i, i, mid + i);
				}
				if (!isEnabled)
				{
					g.setColor(highlight);
					g.drawLine(i, mid - i + 2, i, mid + i);
				}
				break;
			case EAST:
				if (!isEnabled)
				{
					g.translate(1, 1);
					g.setColor(highlight);
					for (i = triangleSize - 1; i >= 0; i--)
					{
						g.drawLine(j, mid - i, j, mid + i);
						j++;
					}
					g.translate(-1, -1);
					g.setColor(shadow);
				}

				j = 0;
				for (i = triangleSize - 1; i >= 0; i--)
				{
					g.drawLine(j, mid - i, j, mid + i);
					j++;
				}
				break;
		}
		g.translate(-x, -y);
		g.setColor(oldColor);
	}

}
