#ifdef BUILDING_EXAMPLE_DLL
#define EXAMPLE_DLL __declspec(dllexport)
#else
#define EXAMPLE_DLL __declspec(dllimport)
#endif

#ifdef __cplusplus
extern "C" {
#endif

int EXAMPLE_DLL add(int x, int y);
int EXAMPLE_DLL sub(int x, int y);

#ifdef __cplusplus
}
#endif
