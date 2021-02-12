#include <lib_a.h>
#include <lib_b.h>
#include <lib_c.h>

int
func_c (void)
{
	return func_b() + 1;
}
