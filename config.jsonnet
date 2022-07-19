local Title(name="My Dashboard", subtext="running on new server", showdate=false, showtime=false) = {
    type: "title", name: name, subtext: subtext, showdate: showdate, showtime: showtime
};
local DashEntry(name="Dashboard Entry", description="example description", url="https://localhost/", icon="") = {
    type: "dashentry", name: name, description: description, url: url, icon: icon
};
local Subsection(name="Example Subsection", subtext="bottom text") = {
    type: "subsection", name: name, subtext: subtext
};
local Separator() = { type: "separator" };
local EndColumn() = { type: "endcolumn" };

/*
EDIT HERE
Notes:
- First element in the dashboard has its own row (optimized for Title)
*/
[
    {
        background: "#111111", entrybackground: "#101010",
        title: "#FFFFFF", sectionname: "#BBBBBB",
        entryname: "#FFFFFF", subtext: "#808080"
    },
    Title(),
    Subsection(name="Search Engines"),
    DashEntry(name="Google", description="search the web", url="https://google.com/", icon="https://google.com/favicon.ico"),
    DashEntry(name="DuckDuckGo", description="search the web (privatly)", url="https://duckduckgo.com/", icon="https://duckduckgo.com/favicon.ico"),
    DashEntry(name="Searx", description="combine search engines", url="https://searx.be/", icon="https://searx.be/favicon.ico"),
    EndColumn(),

    Subsection(name="Websites"),
    DashEntry(name="Reddit", description="frontpage of the internet", url="https://reddit.com/", icon="https://reddit.com/favicon.ico"),
    DashEntry(name="Wikipedia", description="the free encyclopedia", url="https://www.wikipedia.org/", icon="https://www.wikipedia.org/favicon.ico"),
]