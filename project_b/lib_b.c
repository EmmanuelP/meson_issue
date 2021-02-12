#include <lib_a.h>
#include <lib_b.h>

int
func_b (void)
{
	return func_a() + 1;
}
