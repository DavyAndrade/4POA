<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="pt-BR" class="h-full">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Central de Vagas - Faeterj-Rio</title>
    <script src="/_sdk/element_sdk.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="assets/css/styles.css">
    <script>
        tailwind.config = {
            darkMode: 'class',
            theme: {
                extend: {
                    colors: {
                        primary: {
                            50: '#eff6ff',
                            500: '#3b82f6',
                            600: '#2563eb',
                            700: '#1d4ed8',
                            900: '#1e3a8a'
                        }
                    }
                }
            }
        }
    </script>
    <style>
        body {
            box-sizing: border-box;
        }
    </style>
    <style>
        @view-transition {
            navigation: auto;
        }
    </style>
    <script src="/_sdk/data_sdk.js" type="text/javascript"></script>
</head>

<body class="h-full bg-gray-50 dark:bg-gray-900 transition-colors duration-300">
    <div class="flex h-full">
        <!-- Mobile Header -->
        <header class="md:hidden fixed top-0 left-0 right-0 z-50 flex items-center justify-between px-4 py-3 bg-slate-800 text-white shadow-lg">
            <div class="w-8"></div>
            <h1 id="mobile-system-title" class="text-lg font-semibold text-center flex-1">Central de Vagas</h1>
            <button onclick="toggleTheme()" class="p-2 rounded-lg hover:bg-slate-700 transition-colors">
                <span id="mobile-theme-icon" class="text-xl">🌙</span>
            </button>
        </header>

        <!-- Sidebar -->
        <aside id="sidebar" class="hidden md:flex flex-col bg-slate-800 text-white shadow-xl transition-all duration-300 w-72 sidebar-expanded">
            <!-- Sidebar Header -->
            <div class="flex items-center justify-between p-6 bg-slate-900 border-b border-slate-700">
                <div class="sidebar-title">
                    <h1 id="system-title" class="text-xl font-semibold mb-1">Central de Vagas</h1>
                    <p id="institution-name" class="text-sm text-slate-400">Faeterj-Rio</p>
                </div>
                <button onclick="toggleSidebar()" class="p-2 rounded-lg hover:bg-slate-700 transition-colors collapse-btn">
                    <span class="text-lg">◀</span>
                </button>
            </div>
            
            <!-- Navigation Container -->
            <div class="flex flex-col flex-1 justify-between overflow-y-auto">
                <!-- Main Navigation -->
                <nav class="py-4">
                    <a href="index.jsp" class="nav-item active bg-slate-700 border-blue-500 text-blue-400 px-6 py-3 flex items-center gap-3 cursor-pointer hover:bg-slate-700 border-l-4 border-transparent hover:border-blue-500 transition-all block no-underline text-inherit">
                        <span class="nav-icon text-xl w-6 text-center flex-shrink-0">🏠</span>
                        <span class="nav-text">Página Inicial</span>
                        <div class="nav-tooltip absolute left-16 bg-slate-800 text-white px-3 py-2 rounded-lg text-sm whitespace-nowrap opacity-0 invisible transition-all z-50 shadow-lg">
                            Página Inicial
                        </div>
                    </a>
                    
                    <a href="vagas.jsp" class="nav-item px-6 py-3 flex items-center gap-3 cursor-pointer hover:bg-slate-700 border-l-4 border-transparent hover:border-blue-500 transition-all block no-underline text-inherit">
                        <span class="nav-icon text-xl w-6 text-center flex-shrink-0">💼</span>
                        <span class="nav-text">Consulta de Vagas</span>
                        <div class="nav-tooltip absolute left-16 bg-slate-800 text-white px-3 py-2 rounded-lg text-sm whitespace-nowrap opacity-0 invisible transition-all z-50 shadow-lg">
                            Consulta de Vagas
                        </div>
                    </a>
                    
                    <a href="aluno.jsp" class="nav-item px-6 py-3 flex items-center gap-3 cursor-pointer hover:bg-slate-700 border-l-4 border-transparent hover:border-blue-500 transition-all block no-underline text-inherit">
                        <span class="nav-icon text-xl w-6 text-center flex-shrink-0">👤</span>
                        <span class="nav-text">Cadastro do Aluno</span>
                        <div class="nav-tooltip absolute left-16 bg-slate-800 text-white px-3 py-2 rounded-lg text-sm whitespace-nowrap opacity-0 invisible transition-all z-50 shadow-lg">
                            Cadastro do Aluno
                        </div>
                    </a>
                    
                    <a href="empresa.jsp" class="nav-item px-6 py-3 flex items-center gap-3 cursor-pointer hover:bg-slate-700 border-l-4 border-transparent hover:border-blue-500 transition-all block no-underline text-inherit">
                        <span class="nav-icon text-xl w-6 text-center flex-shrink-0">🏢</span>
                        <span class="nav-text">Área da Empresa</span>
                        <div class="nav-tooltip absolute left-16 bg-slate-800 text-white px-3 py-2 rounded-lg text-sm whitespace-nowrap opacity-0 invisible transition-all z-50 shadow-lg">
                            Área da Empresa
                        </div>
                    </a>
                </nav>
                
                <!-- Theme Toggle - Bottom -->
                <div class="border-t border-slate-700 py-4">
                    <div onclick="toggleTheme()" class="nav-item px-6 py-3 flex items-center gap-3 cursor-pointer hover:bg-slate-700 transition-all">
                        <span id="desktop-theme-icon" class="nav-icon text-xl w-6 text-center flex-shrink-0">🌙</span>
                        <span class="nav-text theme-text">Tema Escuro</span>
                        <div class="nav-tooltip absolute left-16 bg-slate-800 text-white px-3 py-2 rounded-lg text-sm whitespace-nowrap opacity-0 invisible transition-all z-50 shadow-lg">
                            Alternar Tema
                        </div>
                    </div>
                </div>
            </div>
        </aside>

        <!-- Main Content -->
        <main class="flex-1 overflow-y-auto pt-16 md:pt-0 pb-20 md:pb-0">
            <div class="p-4 md:p-8 max-w-7xl mx-auto">
                <!-- Página Inicial -->
        <div class="mb-8">
            <h2 id="welcome-message" class="text-3xl md:text-4xl font-bold text-gray-900 dark:text-white mb-2">Bem-vindo
                à
                Central de Vagas</h2>
            <p class="text-gray-600 dark:text-gray-300 text-lg">Conectando alunos às melhores oportunidades
                de estágio e emprego</p>
        </div><!-- Stats Grid -->
        <div class="grid grid-cols-2 md:grid-cols-4 gap-4 md:gap-6 mb-8">
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow-sm border-l-4 border-blue-500">
                <h4 class="text-sm font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wide mb-2">
                    Vagas Ativas</h4>
                <p class="text-3xl font-bold text-gray-900 dark:text-white">127</p>
            </div>
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow-sm border-l-4 border-green-500">
                <h4 class="text-sm font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wide mb-2">
                    Empresas Parceiras</h4>
                <p class="text-3xl font-bold text-gray-900 dark:text-white">45</p>
            </div>
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow-sm border-l-4 border-purple-500">
                <h4 class="text-sm font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wide mb-2">
                    Alunos Cadastrados</h4>
                <p class="text-3xl font-bold text-gray-900 dark:text-white">892</p>
            </div>
            <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow-sm border-l-4 border-orange-500">
                <h4 class="text-sm font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wide mb-2">
                    Contratações</h4>
                <p class="text-3xl font-bold text-gray-900 dark:text-white">234</p>
            </div>
        </div><!-- About Card -->
        <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow-sm mb-6">
            <h3 class="text-xl font-semibold text-gray-900 dark:text-white mb-4 flex items-center gap-2">📋
                Sobre o Sistema</h3>
            <p class="text-gray-600 dark:text-gray-300 mb-4 leading-relaxed">A Central de Vagas de Estágio
                da Faeterj-Rio é uma plataforma completa que conecta alunos a oportunidades profissionais. O
                sistema oferece:</p>
            <ul class="space-y-2 text-gray-600 dark:text-gray-300">
                <li class="flex items-start gap-2"><span class="text-blue-500 mt-1">•</span>
                    <span><strong>Consulta de Vagas:</strong> Listagem, filtros e busca de vagas de
                        estágio/emprego</span>
                </li>
                <li class="flex items-start gap-2"><span class="text-blue-500 mt-1">•</span>
                    <span><strong>Cadastro do Aluno:</strong> Perfil completo com currículo e
                        competências</span>
                </li>
                <li class="flex items-start gap-2"><span class="text-blue-500 mt-1">•</span>
                    <span><strong>Área da Empresa:</strong> Gestão de vagas e candidaturas</span>
                </li>
                <li class="flex items-start gap-2"><span class="text-blue-500 mt-1">•</span>
                    <span><strong>Sistema de Gamificação:</strong> Pontuação por engajamento</span>
                </li>
                <li class="flex items-start gap-2"><span class="text-blue-500 mt-1">•</span>
                    <span><strong>Alertas Personalizados:</strong> Notificações sobre novas vagas</span>
                </li>
            </ul>
        </div><!-- Featured Jobs -->
        <div class="bg-white dark:bg-slate-800 rounded-xl p-6 shadow-sm">
            <h3 class="text-xl font-semibold text-gray-900 dark:text-white mb-4 flex items-center gap-2">🎯
                Destaques de Vagas</h3>
            <div class="overflow-x-auto">
                <table class="w-full">
                    <thead>
                        <tr class="border-b border-gray-200 dark:border-gray-700">
                            <th class="text-left py-3 px-4 font-semibold text-gray-900 dark:text-white">
                                Empresa</th>
                            <th class="text-left py-3 px-4 font-semibold text-gray-900 dark:text-white">Vaga
                            </th>
                            <th class="text-left py-3 px-4 font-semibold text-gray-900 dark:text-white">Área
                            </th>
                            <th class="text-left py-3 px-4 font-semibold text-gray-900 dark:text-white">
                                Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr
                            class="border-b border-gray-100 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-slate-700">
                            <td class="py-3 px-4 text-gray-600 dark:text-gray-300">Tech Solutions</td>
                            <td class="py-3 px-4 text-gray-600 dark:text-gray-300">Desenvolvedor Java Jr
                            </td>
                            <td class="py-3 px-4 text-gray-600 dark:text-gray-300">Tecnologia</td>
                            <td class="py-3 px-4"><span
                                    class="inline-flex px-2 py-1 text-xs font-medium bg-green-100 text-green-800 rounded-full">Aberta</span>
                            </td>
                        </tr>
                        <tr
                            class="border-b border-gray-100 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-slate-700">
                            <td class="py-3 px-4 text-gray-600 dark:text-gray-300">DataCorp</td>
                            <td class="py-3 px-4 text-gray-600 dark:text-gray-300">Analista de Dados</td>
                            <td class="py-3 px-4 text-gray-600 dark:text-gray-300">Análise</td>
                            <td class="py-3 px-4"><span
                                    class="inline-flex px-2 py-1 text-xs font-medium bg-green-100 text-green-800 rounded-full">Aberta</span>
                            </td>
                        </tr>
                        <tr class="hover:bg-gray-50 dark:hover:bg-slate-700">
                            <td class="py-3 px-4 text-gray-600 dark:text-gray-300">WebDesign Pro</td>
                            <td class="py-3 px-4 text-gray-600 dark:text-gray-300">Designer UX/UI</td>
                            <td class="py-3 px-4 text-gray-600 dark:text-gray-300">Design</td>
                            <td class="py-3 px-4"><span
                                    class="inline-flex px-2 py-1 text-xs font-medium bg-yellow-100 text-yellow-800 rounded-full">Poucas
                                    vagas</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
            </div>
        </main>
        
        <!-- Bottom Navigation - Mobile only -->
        <nav class="md:hidden fixed bottom-0 left-0 right-0 bg-slate-800 border-t border-slate-700 z-40">
            <div class="flex">
                <a href="index.jsp" class="bottom-nav-item active text-blue-400 border-t-2 border-blue-400 flex-1 flex flex-col items-center py-2 px-1 hover:text-white transition-colors no-underline">
                    <span class="text-xl mb-1">🏠</span>
                    <span class="text-xs font-medium">Início</span>
                </a>
                <a href="vagas.jsp" class="bottom-nav-item text-gray-400 flex-1 flex flex-col items-center py-2 px-1 hover:text-white transition-colors no-underline">
                    <span class="text-xl mb-1">💼</span>
                    <span class="text-xs font-medium">Vagas</span>
                </a>
                <a href="aluno.jsp" class="bottom-nav-item text-gray-400 flex-1 flex flex-col items-center py-2 px-1 hover:text-white transition-colors no-underline">
                    <span class="text-xl mb-1">👤</span>
                    <span class="text-xs font-medium">Cadastro</span>
                </a>
                <a href="empresa.jsp" class="bottom-nav-item text-gray-400 flex-1 flex flex-col items-center py-2 px-1 hover:text-white transition-colors no-underline">
                    <span class="text-xl mb-1">🏢</span>
                    <span class="text-xs font-medium">Empresa</span>
                </a>
            </div>
        </nav>
    </div>

    <!-- JavaScript Files -->
    <script src="assets/js/common.js"></script>
    <script src="assets/js/index.js"></script>
            <script>(function () { function c() { var b = a.contentDocument || a.contentWindow.document; if (b) { var d = b.createElement('script'); d.innerHTML = "window.__CF$cv$params={r:'99a7fe1ac170ad9c',t:'MTc2MjQ2Nzc3Ny4wMDAwMDA='};var a=document.createElement('script');a.nonce='';a.src='/cdn-cgi/challenge-platform/scripts/jsd/main.js';document.getElementsByTagName('head')[0].appendChild(a);"; b.getElementsByTagName('head')[0].appendChild(d) } } if (document.body) { var a = document.createElement('iframe'); a.height = 1; a.width = 1; a.style.position = 'absolute'; a.style.top = 0; a.style.left = 0; a.style.border = 'none'; a.style.visibility = 'hidden'; document.body.appendChild(a); if ('loading' !== document.readyState) c(); else if (window.addEventListener) document.addEventListener('DOMContentLoaded', c); else { var e = document.onreadystatechange || function () { }; document.onreadystatechange = function (b) { e(b); 'loading' !== document.readyState && (document.onreadystatechange = e, c()) } } } })();</script>

        async function onConfigChange(config) {
            const systemTitle = config.system_title || defaultConfig.system_title;
            const institutionName = config.institution_name || defaultConfig.institution_name;
            const welcomeMessage = config.welcome_message || defaultConfig.welcome_message;
            const backgroundColor = config.background_color || defaultConfig.background_color;
            const sidebarColor = config.sidebar_color || defaultConfig.sidebar_color;
            const primaryColor = config.primary_color || defaultConfig.primary_color;
            const textColor = config.text_color || defaultConfig.text_color;
            const cardColor = config.card_color || defaultConfig.card_color;
            const fontFamily = config.font_family || defaultConfig.font_family;
            const fontSize = config.font_size || defaultConfig.font_size;

            // Update text content
            document.getElementById('system-title').textContent = systemTitle;
            document.getElementById('mobile-system-title').textContent = systemTitle;
            document.getElementById('institution-name').textContent = institutionName;
            const welcomeElement = document.getElementById('welcome-message');
            if (welcomeElement) {
                welcomeElement.textContent = welcomeMessage;
            }

            // Update colors
            document.body.style.backgroundColor = backgroundColor;
            document.getElementById('sidebar').style.backgroundColor = sidebarColor;

            // Update cards
            const cards = document.querySelectorAll('.bg-white');
            cards.forEach(card => {
                if (!card.classList.contains('dark:bg-slate-800')) return;
                card.style.backgroundColor = cardColor;
            });

            // Update primary buttons
            const buttons = document.querySelectorAll('.bg-blue-600');
            buttons.forEach(btn => {
                btn.style.backgroundColor = primaryColor;
            });

            // Update text colors
            const headings = document.querySelectorAll('h2, h3, h4');
            headings.forEach(heading => {
                if (heading.classList.contains('dark:text-white')) {
                    heading.style.color = textColor;
                }
            });

            // Update font
            const baseFontStack = 'system-ui, -apple-system, sans-serif';
            document.body.style.fontFamily = `${fontFamily}, ${baseFontStack}`;

            // Update font sizes
            const mainHeadings = document.querySelectorAll('h2');
            mainHeadings.forEach(h => {
                h.style.fontSize = `${fontSize * 2}px`;
            });

            const subHeadings = document.querySelectorAll('h3');
            subHeadings.forEach(h => {
                h.style.fontSize = `${fontSize * 1.25}px`;
            });

            const bodyText = document.querySelectorAll('p, td, li, input, textarea, select, button');
            bodyText.forEach(el => {
                el.style.fontSize = `${fontSize}px`;
            });
        }

        function mapToCapabilities(config) {
            return {
                recolorables: [
                    {
                        get: () => config.background_color || defaultConfig.background_color,
                        set: (value) => {
                            config.background_color = value;
                            window.elementSdk.setConfig({ background_color: value });
                        }
                    },
                    {
                        get: () => config.sidebar_color || defaultConfig.sidebar_color,
                        set: (value) => {
                            config.sidebar_color = value;
                            window.elementSdk.setConfig({ sidebar_color: value });
                        }
                    },
                    {
                        get: () => config.text_color || defaultConfig.text_color,
                        set: (value) => {
                            config.text_color = value;
                            window.elementSdk.setConfig({ text_color: value });
                        }
                    },
                    {
                        get: () => config.primary_color || defaultConfig.primary_color,
                        set: (value) => {
                            config.primary_color = value;
                            window.elementSdk.setConfig({ primary_color: value });
                        }
                    },
                    {
                        get: () => config.card_color || defaultConfig.card_color,
                        set: (value) => {
                            config.card_color = value;
                            window.elementSdk.setConfig({ card_color: value });
                        }
                    }
                ],
                borderables: [],
                fontEditable: {
                    get: () => config.font_family || defaultConfig.font_family,
                    set: (value) => {
                        config.font_family = value;
                        window.elementSdk.setConfig({ font_family: value });
                    }
                },
                fontSizeable: {
                    get: () => config.font_size || defaultConfig.font_size,
                    set: (value) => {
                        config.font_size = value;
                        window.elementSdk.setConfig({ font_size: value });
                    }
                }
            };
        }

        function mapToEditPanelValues(config) {
            return new Map([
                ["system_title", config.system_title || defaultConfig.system_title],
                ["institution_name", config.institution_name || defaultConfig.institution_name],
                ["welcome_message", config.welcome_message || defaultConfig.welcome_message]
            ]);
        }

        if (window.elementSdk) {
            window.elementSdk.init({
                defaultConfig,
                onConfigChange,
                mapToCapabilities,
                mapToEditPanelValues
            });
        }

        // Theme Management
        let isDarkTheme = false;

        function toggleTheme() {
            isDarkTheme = !isDarkTheme;
            const html = document.documentElement;
            const mobileIcon = document.getElementById('mobile-theme-icon');
            const desktopIcon = document.getElementById('desktop-theme-icon');
            const themeText = document.querySelector('.theme-text');

            if (isDarkTheme) {
                html.classList.add('dark');
                mobileIcon.textContent = '☀️';
                desktopIcon.textContent = '☀️';
                if (themeText) themeText.textContent = 'Tema Claro';
            } else {
                html.classList.remove('dark');
                mobileIcon.textContent = '🌙';
                desktopIcon.textContent = '🌙';
                if (themeText) themeText.textContent = 'Tema Escuro';
            }
            
            // Salvar tema no localStorage
            localStorage.setItem('darkMode', isDarkTheme);
        }

        // Carregar tema salvo
        function loadSavedTheme() {
            const savedTheme = localStorage.getItem('darkMode') === 'true';
            if (savedTheme) {
                isDarkTheme = false; // Para que o toggle funcione corretamente
                toggleTheme();
            }
        }

        // Sidebar Management
        function toggleSidebar() {
            const sidebar = document.getElementById('sidebar');
            const isCollapsed = sidebar.classList.contains('sidebar-collapsed');

            if (isCollapsed) {
                sidebar.classList.remove('sidebar-collapsed', 'w-20');
                sidebar.classList.add('sidebar-expanded', 'w-72');

                // Show text elements
                sidebar.querySelectorAll('.sidebar-title, .nav-text').forEach(el => {
                    el.style.display = '';
                });

                // Hide tooltips
                sidebar.querySelectorAll('.nav-tooltip').forEach(tooltip => {
                    tooltip.classList.add('opacity-0', 'invisible');
                });

                // Reset collapse button rotation
                sidebar.querySelector('.collapse-btn span').style.transform = '';
            } else {
                sidebar.classList.remove('sidebar-expanded', 'w-72');
                sidebar.classList.add('sidebar-collapsed', 'w-20');

                // Hide text elements
                sidebar.querySelectorAll('.sidebar-title, .nav-text').forEach(el => {
                    el.style.display = 'none';
                });

                // Rotate collapse button
                sidebar.querySelector('.collapse-btn span').style.transform = 'rotate(180deg)';

                // Setup tooltip hover events
                sidebar.querySelectorAll('.nav-item').forEach(item => {
                    const tooltip = item.querySelector('.nav-tooltip');
                    if (tooltip) {
                        item.addEventListener('mouseenter', () => {
                            if (sidebar.classList.contains('sidebar-collapsed')) {
                                tooltip.classList.remove('opacity-0', 'invisible');
                            }
                        });
                        item.addEventListener('mouseleave', () => {
                            tooltip.classList.add('opacity-0', 'invisible');
                        });
                    }
                });
            }
        }

        // Inicializar tema salvo quando a página carregar
        document.addEventListener('DOMContentLoaded', function() {
            loadSavedTheme();
        });
    </script>
</body>

</html>