/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jschotte <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/25 13:08:10 by jschotte          #+#    #+#             */
/*   Updated: 2017/04/25 13:15:17 by jschotte         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <stdlib.h>

int		ft_isalpha(char c);
int		ft_isdigit(char c);
int		ft_isalnum(char c);
int		ft_isascii(char c);
int		ft_isprint(char c);

char	ft_toupper(char c);
char	ft_tolower(char c);

void	ft_puts(char *str);

int		ft_strlen(char *str);
void	ft_bzero(void *s, size_t len);
void	ft_memset(void *s, int c, size_t len);
char	*ft_strcat(char *s1, const char *s2);
void	*ft_memcpy(void *dst, const void *src, size_t n);
char	*ft_strdup(const char *s1);
void	ft_cat(int fd);

int		ft_abs(int nb);
void	ft_swap(int *a, int *b);
int		ft_strcmp(char *s1, char *s2);
int		ft_isxdigit(char c);
int		ft_sqrt(int nb);
#endif
