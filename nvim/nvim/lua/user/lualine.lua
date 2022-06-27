local ls = require "luasnip"

-- ls.parser.parse_snippet(<text>, <VS**** style snippet>)
ls.snippets = {
    all = {
        -- Available in any filetype
        ls.parser.parse_snippet("expand", "-- this is what was expanded!"),
    },

    lua = {
        -- Lua specific snippets go here.
    },
}

