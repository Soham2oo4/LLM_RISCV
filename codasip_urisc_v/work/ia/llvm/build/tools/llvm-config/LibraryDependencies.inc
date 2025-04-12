//===- llvm-build generated file --------------------------------*- C++ -*-===//
//
// Component Library Depenedency Table
//
// Automatically generated file, do not edit!
//
//===----------------------------------------------------------------------===//

struct AvailableComponent {
  /// The name of the component.
  const char *Name;

  /// The name of the library for this component (or NULL).
  const char *Library;

  /// Whether the component is installed.
  bool IsInstalled;

  /// The list of libraries required when linking this component.
  const char *RequiredLibraries[6];
} AvailableComponents[13] = {
  { "all", 0, 1, { "all-targets", "native", "nativecodegen", "engine" } },
  { "all-targets", 0, 1, { "codasip" } },
  { "codasip", 0, 1, { "codasipcustommodules", "codasipgenasmprinter", "codasipgeninfo", "codasipgendesc", "codasipgencodegen" } },
  { "codasipcustommodules", "libLLVMCodasipCustomModules.a", 1, { "target" } },
  { "codasipgenasmprinter", "libLLVMCodasipGenAsmPrinter.a", 1, { "target" } },
  { "codasipgencodegen", "libLLVMCodasipGenCodeGen.a", 1, { "codasipgenasmprinter", "codasipgendesc", "codasipgeninfo", "codasipcustommodules", "target" } },
  { "codasipgendesc", "libLLVMCodasipGenDesc.a", 1, { "codasipgenasmprinter", "codasipgeninfo" } },
  { "codasipgeninfo", "libLLVMCodasipGenInfo.a", 1, {  } },
  { "engine", 0, 1, { "interpreter" } },
  { "interpreter", "libLLVMInterpreter.a", 1, {  } },
  { "native", 0, 1, {  } },
  { "nativecodegen", 0, 1, {  } },
  { "target", "libLLVMTarget.a", 1, {  } },
};
