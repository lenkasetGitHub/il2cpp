// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.
// See the LICENSE file in the project root for more information.

.assembly extern mscorlib {}
//.assembly TestCase6 {}


// =============== CLASS MEMBERS DECLARATION ===================
.class interface private abstract auto ansi InterfaceFolding.Nested_J.TestCase6.I`1<T>
{ .method public hidebysig newslot abstract virtual instance string  Foo() cil managed {} }

.class private abstract auto ansi beforefieldinit InterfaceFolding.Nested_J.TestCase6.A`1<U> 
		implements class InterfaceFolding.Nested_J.TestCase6.I`1<!U>
{
  .class interface nested family abstract auto ansi J
  { 
    .method public hidebysig newslot abstract virtual instance string  Bar1() cil managed {}
    .method public hidebysig newslot abstract virtual instance string  Bar2() cil managed {}
  }
  .method public hidebysig newslot virtual instance string  Foo() cil managed
  {
    ldstr      "A::Foo"
    ret
  }
  .method public hidebysig newslot virtual instance string  Bar1() cil managed
  {
    .maxstack  8
    ldstr      "A::Bar1"
    ret
  }
  .method public hidebysig newslot virtual instance string  Bar2() cil managed
  {
    .maxstack  8
    ldstr      "A::Bar2"
    ret
  }
  .method public hidebysig specialname rtspecialname instance void .ctor() cil managed
  {
    ret
  }
}

.class private abstract auto ansi beforefieldinit InterfaceFolding.Nested_J.TestCase6.B`2<V,W>
       extends class InterfaceFolding.Nested_J.TestCase6.A`1<!V>
       implements class InterfaceFolding.Nested_J.TestCase6.I`1<!W>, InterfaceFolding.Nested_J.TestCase6.A`1/J
{
  .method public hidebysig specialname rtspecialname instance void .ctor() cil managed
  {
    ret
  }
}

.class private auto ansi beforefieldinit InterfaceFolding.Nested_J.TestCase6.C extends class InterfaceFolding.Nested_J.TestCase6.B`2<class InterfaceFolding.Nested_J.TestCase6.C,class InterfaceFolding.Nested_J.TestCase6.C>
{
  .method public hidebysig specialname rtspecialname instance void .ctor() cil managed
  {
    ret
  }
}

.class public auto ansi beforefieldinit InterfaceFolding.Nested_J.TestCase6.Test extends [mscorlib]System.Object
{
  .method public hidebysig static int32  Main() cil managed
  {
    //.entrypoint

    newobj     instance void InterfaceFolding.Nested_J.TestCase6.C::.ctor()
	callvirt   instance string class InterfaceFolding.Nested_J.TestCase6.C::Foo()
    ldstr      "A::Foo"
    call       bool [mscorlib]System.String::op_Inequality(string, string)
    brtrue     FAILURE

    newobj     instance void InterfaceFolding.Nested_J.TestCase6.C::.ctor()
    callvirt   instance string class InterfaceFolding.Nested_J.TestCase6.C::Bar1()
    ldstr      "A::Bar1"
    call       bool [mscorlib]System.String::op_Inequality(string,string)
    brtrue     FAILURE    
	
	newobj     instance void InterfaceFolding.Nested_J.TestCase6.C::.ctor()
    callvirt   instance string class InterfaceFolding.Nested_J.TestCase6.C::Bar2()
    ldstr      "A::Bar2"
    call       bool [mscorlib]System.String::op_Inequality(string,string)
    brtrue     FAILURE
	
	
PASS:
    ldstr      "Pass"
    pop//call       void [mscorlib]System.Console::WriteLine(string)
    ldc.i4.s   100
    ret

FAILURE:
    ldstr      "Failed!"
    pop//call       void [mscorlib]System.Console::WriteLine(string)
    ldc.i4.m1
    ret
  }
}
