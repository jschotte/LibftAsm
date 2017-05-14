/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jschotte <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/25 13:15:32 by jschotte          #+#    #+#             */
/*   Updated: 2017/04/25 15:13:29 by jschotte         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h> 
#include <fcntl.h>

void	ft_test(char c, int f(char))
{
	printf("%c: %d\n", c, f(c));
}

void	ft_tests(char *str, int f(char*))
{
	printf("%s: %d\n", str, f(str));
}

void	ft_print(char c, char f(char))
{
	printf("%c: %c\n", c, f(c));
}

int		main(void)
{
	/* ISALPHA TESTS */
	printf("Is Alpha tests\n");
	ft_test('`', ft_isalpha);
	ft_test('a', ft_isalpha);
	ft_test('m', ft_isalpha);
	ft_test('z', ft_isalpha);
	ft_test('A', ft_isalpha);
	ft_test('M', ft_isalpha);
	ft_test('z', ft_isalpha);
	ft_test('@', ft_isalpha);

	/* ISDIGIT TESTS */
	printf("\nIs Digit tests\n");
	ft_test('0', ft_isdigit);
	ft_test('9', ft_isdigit);
	ft_test('@', ft_isdigit);

	/* ISALNUM TESTS */
	printf("\nIs Alnum tests\n");
	ft_test('`', ft_isalnum);
	ft_test('a', ft_isalnum);
	ft_test('m', ft_isalnum);
	ft_test('z', ft_isalnum);
	ft_test('A', ft_isalnum);
	ft_test('M', ft_isalnum);
	ft_test('z', ft_isalnum);
	ft_test('@', ft_isalnum);
	ft_test('0', ft_isalnum);
	ft_test('9', ft_isalnum);
	ft_test('@', ft_isalnum);

	/* ISASCII TESTS */
	printf("\nIs Ascii tests\n");
	ft_test('`', ft_isascii);
	ft_test('~', ft_isascii);

	/* ISPRINT TESTS */
	printf("\nIs Print tests\n");
	ft_test(' ', ft_isprint);
	ft_test('~', ft_isprint);
	ft_test(0, ft_isprint);

	/* TOUPPER TESTS */
	printf("\nTo upper tests\n");
	ft_print(' ', ft_toupper);
	ft_print('a', ft_toupper);
	ft_print('z', ft_toupper);
	ft_print('a', ft_toupper);
	ft_print('Z', ft_toupper);
	ft_print('1', ft_toupper);

	/* TOLOWER TESTS */
	printf("\nTo lower tests\n");
	ft_print(' ', ft_tolower);
	ft_print('a', ft_tolower);
	ft_print('z', ft_tolower);
	ft_print('a', ft_tolower);
	ft_print('Z', ft_tolower);
	ft_print('1', ft_tolower);

	/* STRLEN TEST */
	printf("\nStrlen tests\n");
	ft_tests("42", ft_strlen);
	ft_tests("", ft_strlen);
	ft_tests("Fremont", ft_strlen);

	/* BZERO TEST */
	printf("\nBzero tests\n");
	char *foo = malloc(10);
	ft_bzero(foo, 10);

	/* STRCAT TEST */
	printf("\nStrcat tests\n");
	char *str1 = malloc(42);
	strcpy(str1, "coucou");
	char *str2 = strdup("42");
	printf("%s\n", ft_strcat(str1, str2));

	/*PUTS TEST */
	printf("\nPuts tests\n");
	ft_puts("Hello World");
	ft_puts("42 US");	
	ft_puts("");
	ft_puts(NULL);

	/* MEMSET TEST */
	printf("\nMemset tests\n");
	char *foo2 = malloc(10);
	ft_memset(foo2, 'a', 10);
	printf("%s\n", foo2);	
	char *foo3 = malloc(10);
	ft_memset(foo3, 'b', 5);
	printf("%s\n", foo3);	

	/* MEMCPY TEST */
	printf("\nMemcpy tests\n");
	const char src[50] = "First string test";
	char dest[50] = "";
	ft_memcpy(dest, src, 5);
	printf("%s\n", dest);
	ft_memcpy(dest, src, 10);
	printf("%s\n", dest);
	ft_memcpy(dest, src, 50);
	printf("%s\n", dest);

	/* STRDUP TEST */
	printf("\nStrdup tests\n");
	char *dup = ft_strdup("42");
	printf("%s\n", dup);
	free(dup);

	/* CAT TEST */
	printf("\nCat Test\n");
	ft_cat(open("Makefile", O_RDONLY));
	ft_cat(0);

	/////////////////////////////////////////////
	/* BONUS PART */
	printf("\nBONUS PART\n");

	printf("\nABS TEST\n");
	printf("%d\n", ft_abs(42));
	printf("%d\n", ft_abs(1));
	printf("%d\n", ft_abs(0));
	printf("%d\n", ft_abs(-1));
	printf("%d\n", ft_abs(-42));

	printf("\nSWAP TEST\n");
	int a = 21;
	int b = 42;
	printf("%d %d\n", a, b);
	ft_swap(&a, &b);
	printf("%d %d\n", a, b);

	printf("\nSTRCMP TEST\n");
	printf("%d\n", ft_strcmp("123", "321"));
	printf("%d\n", ft_strcmp("123", "123"));
	printf("%d\n", ft_strcmp("321", "123"));

	printf("\nISXDIGIT TEST\n");
	ft_test('0', ft_isxdigit);
	ft_test('9', ft_isxdigit);
	ft_test('a', ft_isxdigit);
	ft_test('f', ft_isxdigit);
	ft_test(' ', ft_isxdigit);
	ft_test('@', ft_isxdigit);
	ft_test('g', ft_isxdigit);
}
