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
 * E3		enum
 * E3::A	enumerator
 * E3::B	enumerator
 * E3::C	enumerator
 * E4		enum
 * E4::A	enumerator
 * E4::B	enumerator
 * E4::C	enumerator
 * E5		enum
 * E5::A	enumerator
 * E5::B	enumerator
 * E5::C	enumerator
 * E6		enum
 * E6::A	enumerator
 * E6::B	enumerator
 * E6::C	enumerator
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

enum class E3 {
	A, B, C
};

enum class E4 : long {
	A, B, C
};

enum struct E5 {
	A, B, C
};

enum struct E6 : unsigned long int {
	A, B, C
};
