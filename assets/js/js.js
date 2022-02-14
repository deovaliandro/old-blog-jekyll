const toggleSwitch = document.getElementById("changeTheme");
const currentTheme = localStorage.getItem('theme') ? localStorage.getItem('theme') : null;

if (currentTheme === 'dark') {
    toggleSwitch.innerHTML = "😎";
} else {
    toggleSwitch.innerHTML = "😳";
}

if (currentTheme) {
    document.documentElement.setAttribute('data-theme', currentTheme);

    if (currentTheme === 'dark') {
        document.documentElement.setAttribute('data-theme', 'dark');
        stylesheet.setAttribute('href', '/assets/css/gruvbox.css');
    }
}

toggleSwitch.onclick = function() {
    var stylesheet = document.getElementById("stylesheet");
    const currentTheme = localStorage.getItem('theme') ? localStorage.getItem('theme') : null;
    if (currentTheme === 'dark') {
        document.documentElement.setAttribute('data-theme', 'light');
        stylesheet.setAttribute('href', '/assets/css/github.css');
        localStorage.setItem('theme', 'light');
        toggleSwitch.innerHTML = "😳";
    } else {
        document.documentElement.setAttribute('data-theme', 'dark');
        stylesheet.setAttribute('href', '/assets/css/gruvbox.css');
        localStorage.setItem('theme', 'dark');
        toggleSwitch.innerHTML = "😎";
    }
};