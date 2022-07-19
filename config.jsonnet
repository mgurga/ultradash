local Title(name="My Dashboard", subtext="running on new server", showdate=false, showtime=false) = {
    type: "title", name: name, subtext: subtext, showdate: showdate, showtime: showtime
};
local DashEntry(name="Dashboard Entry", description="example description", url="https://localhost/", icon="") = {
    type: "dashentry", name: name, description: description, url: url, icon: if icon == "" then url + "/favicon.ico" else icon
};
local SmallDashEntry(name="Dashboard Entry", url="https://localhost/", icon="") = {
    type: "smalldashentry", name: name, url: url, icon: if icon == "" then url + "/favicon.ico" else icon
};
local Section(name="Example Section", subtext="") = {
    type: "section", name: name, subtext: subtext
};
local SubSection(name="Example Sub Section") = { type: "subsection", name: name };
local Separator() = { type: "separator" };
local EndColumn() = { type: "endcolumn" };

/*
EDIT HERE
Notes:
- First element in the dashboard has its own row (optimized for Title)
*/
[
    {
        background: "#111111", entrybackground: "#090909",
        title: "#FFFFFF", sectionname: "#BBBBBB",
        entryname: "#FFFFFF", subtext: "#808080"
    },
    Title(),
    Section(name="Search Engines"),
    DashEntry(name="Google", description="search the web", url="https://google.com/", icon="https://google.com/favicon.ico"),
    DashEntry(name="DuckDuckGo", description="search the web (privatly)", url="https://duckduckgo.com/", icon="https://duckduckgo.com/favicon.ico"),
    DashEntry(name="Searx", description="combine search engines", url="https://searx.be/", icon="https://searx.be/favicon.ico"),
    Separator(),
    SubSection(name="Bookmarks"),
    SmallDashEntry(name="Google Drive", url="https://drive.google.com/"),
    SmallDashEntry(name="Youtube", url="https://youtube.com/"),
    SmallDashEntry(name="Twitter", url="https://twitter.com/"),
    EndColumn(),

    Section(name="Websites"),
    DashEntry(name="Reddit", description="frontpage of the internet", url="https://reddit.com/", icon="https://reddit.com/favicon.ico"),
    DashEntry(name="Wikipedia", description="the free encyclopedia", url="https://www.wikipedia.org/", icon="https://www.wikipedia.org/favicon.ico"),
    Separator(),
    SubSection(name="Code Sharing Websites"),
    SmallDashEntry(name="Github", url="https://github.com/"),
    SmallDashEntry(name="GitLab", url="https://gitlab.com/"),
    SmallDashEntry(name="Gitea", url="https://gitea.io/", icon="https://gitea.io/images/gitea.png"),
    SmallDashEntry(name="Codeberg", url="https://codeberg.org/", icon="https://codeberg.org/assets/img/favicon.png"),
]