---
title: Team
nav:
  order: 3
  tooltip: About our team
---

# {% include icon.html icon="fa-solid fa-users" %}Team

{% include section.html %}

{% include list.html data="members" component="portrait" filter="role == 'principal-investigator'" %}

{% include section.html %}

{% include list.html data="members" component="portrait" filter="role == 'phd5'" %}

{% include list.html data="members" component="portrait" filter="role == 'phd4'" %}

{% include list.html data="members" component="portrait" filter="role == 'phd3'" %}

{% include list.html data="members" component="portrait" filter="role == 'phd2'" %}

{% include list.html data="members" component="portrait" filter="role == 'phd1'" %}

{% include list.html data="members" component="portrait" filter="role == 'grad3'" %}

{% include list.html data="members" component="portrait" filter="role == 'grad2'" %}

{% include list.html data="members" component="portrait" filter="role == 'grad1'" %}

{% include list.html data="members" component="portrait" filter="role == 'undergrad'" %}

{% include list.html data="members" component="portrait" filter="role == 'ra'" %}

<!-- TODO: Add alumni -->
