// Mobile Navigation
(function() {
  const menuToggle = document.querySelector('.header__menu-toggle');
  const mobileNav = document.querySelector('.mobile-nav');
  const backdrop = document.querySelector('.mobile-nav__backdrop');

  if (!menuToggle || !mobileNav) return;

  function openMenu() {
    mobileNav.setAttribute('aria-hidden', 'false');
    menuToggle.setAttribute('aria-expanded', 'true');
    document.body.style.overflow = 'hidden';
  }

  function closeMenu() {
    mobileNav.setAttribute('aria-hidden', 'true');
    menuToggle.setAttribute('aria-expanded', 'false');
    document.body.style.overflow = '';
  }

  menuToggle.addEventListener('click', function() {
    if (mobileNav.getAttribute('aria-hidden') === 'false') {
      closeMenu();
    } else {
      openMenu();
    }
  });

  backdrop.addEventListener('click', closeMenu);

  // Close on ESC key
  document.addEventListener('keydown', function(e) {
    if (e.key === 'Escape' && mobileNav.getAttribute('aria-hidden') === 'false') {
      closeMenu();
    }
  });

  // Close when clicking nav links
  const navLinks = mobileNav.querySelectorAll('a');
  navLinks.forEach(function(link) {
    link.addEventListener('click', closeMenu);
  });
})();

// Wrap post tables so wide tables scroll instead of overflowing the page
(function() {
  const tables = document.querySelectorAll('.post__content table');
  tables.forEach(function(table) {
    if (table.parentElement && table.parentElement.classList.contains('table-scroll')) return;
    const wrap = document.createElement('div');
    wrap.className = 'table-scroll';
    wrap.setAttribute('tabindex', '0');
    wrap.setAttribute('role', 'region');
    wrap.setAttribute('aria-label', 'Table, scrollable horizontally');
    table.parentNode.insertBefore(wrap, table);
    wrap.appendChild(table);
  });
})();
