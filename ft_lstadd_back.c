/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstadd_back.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gdp <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/18 20:19:47 by gdp               #+#    #+#             */
/*   Updated: 2020/03/18 20:19:52 by gdp              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstadd_back(t_list **alst, t_list *new)
{
	t_list *temp;

	if (!*alst)
	{
		*alst = new;
		return ;
	}
	if (!(temp = ft_lstlast(*alst)))
		return ;
	temp->next = new;
	new->next = NULL;
}
