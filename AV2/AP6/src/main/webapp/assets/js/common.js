/**
 * Central de Vagas - Faeterj-Rio
 * JavaScript Common Functions
 */

// Global variables
let isDarkTheme = false;
let sidebarExpanded = true;

/**
 * Theme Management
 */
function toggleTheme() {
    isDarkTheme = !isDarkTheme;
    const html = document.documentElement;
    const mobileIcon = document.getElementById('mobile-theme-icon');
    const desktopIcon = document.getElementById('desktop-theme-icon');
    const themeText = document.querySelector('.theme-text');

    if (isDarkTheme) {
        html.classList.add('dark');
        if (mobileIcon) mobileIcon.textContent = '☀️';
        if (desktopIcon) desktopIcon.textContent = '☀️';
        if (themeText) themeText.textContent = 'Tema Claro';
    } else {
        html.classList.remove('dark');
        if (mobileIcon) mobileIcon.textContent = '🌙';
        if (desktopIcon) desktopIcon.textContent = '🌙';
        if (themeText) themeText.textContent = 'Tema Escuro';
    }
    
    // Salvar tema no localStorage
    localStorage.setItem('darkMode', isDarkTheme);
}

/**
 * Load saved theme from localStorage
 */
function loadSavedTheme() {
    // Verificar se o tema já foi aplicado pelo script inline
    const savedTheme = localStorage.getItem('darkMode') === 'true';
    const html = document.documentElement;
    const mobileIcon = document.getElementById('mobile-theme-icon');
    const desktopIcon = document.getElementById('desktop-theme-icon');
    const themeText = document.querySelector('.theme-text');
    
    // Sincronizar a variável JavaScript com o estado atual
    isDarkTheme = html.classList.contains('dark');
    
    // Atualizar os ícones e textos baseado no estado atual
    if (isDarkTheme) {
        if (mobileIcon) mobileIcon.textContent = '☀️';
        if (desktopIcon) desktopIcon.textContent = '☀️';
        if (themeText) themeText.textContent = 'Tema Claro';
    } else {
        if (mobileIcon) mobileIcon.textContent = '🌙';
        if (desktopIcon) desktopIcon.textContent = '🌙';
        if (themeText) themeText.textContent = 'Tema Escuro';
    }
    
    // Remover classe de carregamento para reabilitar transições
    setTimeout(() => {
        html.classList.remove('theme-loading');
    }, 100);
}

/**
 * Save sidebar state to localStorage
 */
function saveSidebarState() {
    localStorage.setItem('sidebarExpanded', sidebarExpanded);
}

/**
 * Load saved sidebar state from localStorage
 */
function loadSavedSidebarState() {
    const savedState = localStorage.getItem('sidebarExpanded');
    
    if (savedState !== null) {
        sidebarExpanded = savedState === 'true';
        applySidebarState();
    }
}

/**
 * Apply sidebar state without toggling
 */
function applySidebarState() {
    const sidebar = document.getElementById('sidebar');
    if (!sidebar) return;

    // Add loading class to prevent transitions during state application
    sidebar.classList.add('sidebar-loading');

    const collapseBtn = sidebar.querySelector('.collapse-btn span');
    const navItems = sidebar.querySelectorAll('.nav-item');
    const navContainer = sidebar.querySelector('.flex.flex-col.flex-1.justify-between');
    
    if (sidebarExpanded) {
        sidebar.classList.remove('sidebar-collapsed', 'w-20');
        sidebar.classList.add('sidebar-expanded', 'w-72');
        
        // Enable overflow for expanded sidebar
        if (navContainer) {
            navContainer.classList.remove('sidebar-nav-collapsed');
        }
        
        // Show text elements
        sidebar.querySelectorAll('.sidebar-title, .nav-text').forEach(el => {
            el.style.display = '';
        });
        
        // Reset collapse button rotation
        if (collapseBtn) {
            collapseBtn.style.transform = '';
            collapseBtn.textContent = '◀';
        }
        
        // Hide tooltips
        navItems.forEach(item => {
            const tooltip = item.querySelector('.nav-tooltip');
            if (tooltip) {
                tooltip.classList.add('opacity-0', 'invisible');
            }
        });
    } else {
        sidebar.classList.remove('sidebar-expanded', 'w-72');
        sidebar.classList.add('sidebar-collapsed', 'w-20');
        
        // Disable overflow for collapsed sidebar
        if (navContainer) {
            navContainer.classList.add('sidebar-nav-collapsed');
        }
        
        // Hide text elements
        sidebar.querySelectorAll('.sidebar-title, .nav-text').forEach(el => {
            el.style.display = 'none';
        });
        
        // Rotate collapse button
        if (collapseBtn) {
            collapseBtn.style.transform = 'rotate(180deg)';
            collapseBtn.textContent = '▶';
        }
        
        // Setup tooltip hover events
        navItems.forEach(item => {
            const tooltip = item.querySelector('.nav-tooltip');
            if (tooltip) {
                // Remove existing event listeners to prevent duplicates
                item.removeEventListener('mouseenter', handleTooltipShow);
                item.removeEventListener('mouseleave', handleTooltipHide);
                
                // Add new event listeners
                item.addEventListener('mouseenter', handleTooltipShow);
                item.addEventListener('mouseleave', handleTooltipHide);
            }
        });
    }

    // Remove loading class after a small delay to allow state to be applied
    setTimeout(() => {
        sidebar.classList.remove('sidebar-loading');
    }, 10);
}

/**
 * Handle tooltip show
 */
function handleTooltipShow(event) {
    const sidebar = document.getElementById('sidebar');
    const tooltip = event.currentTarget.querySelector('.nav-tooltip');
    if (tooltip && sidebar && sidebar.classList.contains('sidebar-collapsed')) {
        tooltip.classList.remove('opacity-0', 'invisible');
    }
}

/**
 * Handle tooltip hide
 */
function handleTooltipHide(event) {
    const tooltip = event.currentTarget.querySelector('.nav-tooltip');
    if (tooltip) {
        tooltip.classList.add('opacity-0', 'invisible');
    }
}

/**
 * Sidebar Management
 */
function toggleSidebar() {
    sidebarExpanded = !sidebarExpanded;
    applySidebarState();
    saveSidebarState();
}

/**
 * Responsive sidebar handling
 */
function handleResize() {
    const sidebar = document.getElementById('sidebar');
    if (sidebar) {
        if (window.innerWidth >= 768) {
            sidebar.classList.remove('hidden');
            sidebar.classList.add('flex');
        } else {
            sidebar.classList.add('hidden');
            sidebar.classList.remove('flex');
        }
    }
}

/**
 * Initialize common functionality
 */
function initializeCommon() {
    // Load saved theme
    loadSavedTheme();
    
    // Load saved sidebar state
    loadSavedSidebarState();
    
    // Setup responsive sidebar
    handleResize();
    
    // Add event listeners
    window.addEventListener('resize', handleResize);
}

// Initialize when DOM is loaded
document.addEventListener('DOMContentLoaded', initializeCommon);