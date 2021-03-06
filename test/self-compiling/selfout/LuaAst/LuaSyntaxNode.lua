-- Generated by CSharp.lua Compiler
--[[
Copyright 2017 YANG Huan (sy.yanghuan@gmail.com).

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
]]
local System = System
local CSharpLua
local CSharpLuaLuaAstLuaSyntaxNode
System.usingDeclare(function (global)
  CSharpLua = global.CSharpLua
  CSharpLuaLuaAstLuaSyntaxNode = CSharpLua.LuaAst.LuaSyntaxNode
end)
System.namespace("CSharpLua.LuaAst", function (namespace)
  namespace.class("LuaSyntaxNode", function (namespace)
    namespace.class("Semicolon", function (namespace)
      local ToString
      ToString = function (this)
        return ";" --[[Semicolon.kSemicolon]]
      end
      return {
        ToString = ToString
      }
    end)
    namespace.class("Tokens", function (namespace)
      local getEmpty, Semicolon, __staticCtor__
      __staticCtor__ = function (this)
        Semicolon = CSharpLuaLuaAstLuaSyntaxNode.Semicolon()
        this.Semicolon = Semicolon
      end
      getEmpty = function ()
        return ""
      end
      return {
        __inherits__ = function (global)
          return {
            global.CSharpLua.LuaAst.LuaSyntaxNode.Keyword
          }
        end,
        getEmpty = getEmpty,
        __staticCtor__ = __staticCtor__
      }
    end)
    namespace.class("Keyword", function (namespace)
      return {}
    end)
    local Render, SpecailWord, ReservedWords, SpecialMethodReservedWords, IsReservedWord, IsMethodReservedWord, __staticCtor__
    __staticCtor__ = function (this)
      this.TempIdentifiers = System.Array(System.String)("default", "extern", "ref", "out", "try", "case", "void", "byte", "char", "uint", "lock", "using", "fixed", "const", "object", "internal", "virtual")
      ReservedWords = System.create(System.HashSet(System.String)(), function (default)
        default:Add("and" --[[Keyword.And]])
        default:Add("break" --[[Keyword.Break]])
        default:Add("do" --[[Keyword.Do]])
        default:Add("else" --[[Keyword.Else]])
        default:Add("elseif" --[[Keyword.ElseIf]])
        default:Add("end" --[[Keyword.End]])
        default:Add("false" --[[Keyword.False]])
        default:Add("for" --[[Keyword.For]])
        default:Add("function" --[[Keyword.Function]])
        default:Add("goto" --[[Keyword.Goto]])
        default:Add("if" --[[Keyword.If]])
        default:Add("in" --[[Keyword.In]])
        default:Add("local" --[[Keyword.Local]])
        default:Add("nil" --[[Keyword.Nil]])
        default:Add("not" --[[Keyword.Not]])
        default:Add("or" --[[Keyword.Or]])
        default:Add("repeat" --[[Keyword.Repeat]])
        default:Add("return" --[[Keyword.Return]])
        default:Add("then" --[[Keyword.Then]])
        default:Add("true" --[[Keyword.True]])
        default:Add("until" --[[Keyword.Until]])
        default:Add("while" --[[Keyword.While]])
        default:Add("System")
        default:Add("Linq")
      end)
      SpecialMethodReservedWords = System.create(System.HashSet(System.String)(), function (default)
        default:Add("__add")
        default:Add("__sub")
        default:Add("__mul")
        default:Add("__div")
        default:Add("__mod")
        default:Add("__pow")
        default:Add("__umm")
        default:Add("__idiv")
        default:Add("__band")
        default:Add("__bor")
        default:Add("__bxor")
        default:Add("__bnot")
        default:Add("__shl")
        default:Add("__shr")
        default:Add("__concat")
        default:Add("__len")
        default:Add("__eq")
        default:Add("__lt")
        default:Add("__le")
        default:Add("__index")
        default:Add("__newindex")
        default:Add("__call")
        default:Add("__name__")
        default:Add("__kind__")
        default:Add("__base__")
        default:Add("__ctor__")
        default:Add("__inherits__")
        default:Add("__interfaces__")
        default:Add("__default__")
        default:Add("__attributes__")
        default:Add("__clone__")
      end)
      this.ReservedWords, this.SpecialMethodReservedWords = ReservedWords, SpecialMethodReservedWords
    end
    Render = function (this, renderer)
      System.throw(System.NotSupportedException(("{0} is not override"):Format(this:GetType():getName())))
    end
    SpecailWord = function (s)
      return ("__" .. s) .. "__"
    end
    IsReservedWord = function (identifier)
      return ReservedWords:Contains(identifier)
    end
    IsMethodReservedWord = function (identifier)
      return IsReservedWord(identifier) or SpecialMethodReservedWords:Contains(identifier)
    end
    return {
      Render = Render,
      SpecailWord = SpecailWord,
      IsReservedWord = IsReservedWord,
      IsMethodReservedWord = IsMethodReservedWord,
      __staticCtor__ = __staticCtor__
    }
  end)

  namespace.class("LuaSyntaxList_1", function (namespace)
    return function (T)
      local Add, AddRange, __ctor__
      __ctor__ = function (this)
        this.__base__.__ctor__(this)
      end
      Add = function (this, node)
        if node == nil then
          System.throw(CSharpLua.ArgumentNullException("node" --[[nameof(node)]]))
        end
        this:Add(node)
      end
      AddRange = function (this, collection)
        for _, item in System.each(collection) do
          if item == nil then
            System.throw(CSharpLua.ArgumentNullException("item" --[[nameof(item)]]))
          end
          this:Add(item)
        end
      end
      return {
        __inherits__ = function (global)
          return {
            System.List(T)
          }
        end,
        Add = Add,
        AddRange = AddRange,
        __ctor__ = __ctor__
      }
    end
  end)
end)
