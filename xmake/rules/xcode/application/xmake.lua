--!A cross-platform build utility based on Lua
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
-- 
-- Copyright (C) 2015-2020, TBOOX Open Source Group.
--
-- @author      ruki
-- @file        xmake.lua
--

-- define rule: xcode application (TODO developing)
rule("xcode.application")

    -- support add_files("*.storyboard")
    set_extensions(".storyboard", ".xcassets")

    -- we must set kind before target.on_load(), may we will use target in on_load()
    before_load("load")

    -- build *.storyboard and *.xcassets
    on_build_file("build_file")

    -- build *.app
    after_build("build")

    -- package *.app to *.ipa (iphoneos) or *.dmg (macosx)
    on_package("package")
   
    -- install application
    on_install("install")

    -- uninstall application
    on_uninstall("uninstall")

