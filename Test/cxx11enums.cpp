/*
 * Should output:
 *
 * E0		enum
 * E0::A	enumerator
 * E1		enum
 * E1::A	enumerator
 * E1::B	enumerator
 * E1::C	enumerator
 * E2		enum
 * E2::A	enumerator
 */

enum E0 {
	A
};

enum E1 : unsigned int {
	A,
	B,
	C
};

enum E2 : int {
	A
};
