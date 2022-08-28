/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mverger <mverger@student.42lyon.fr>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/23 14:17:23 by mverger           #+#    #+#             */
/*   Updated: 2021/11/25 14:03:08 by mverger          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <unistd.h>
# include <stdio.h>
# include <stdlib.h>
# include <stdarg.h>

int	ft_putnbr(int n);
int	ft_putchar(int c);
int	ft_putstr(char *s);
int	ft_unsigned_putnbr(unsigned int n);
int	ft_convert_low_hexa(unsigned int n);
int	ft_convert_upper_hexa(unsigned int n);
int	ft_convert_ptr(unsigned long n);
int	ft_printf(const char *format, ...);
int	check_type(char c, int counter, va_list args);

#endif