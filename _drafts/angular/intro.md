---
layout: post
title:  "Angular Introduction"
date:   2021-03-20 11:24:00 -0800
categories: angular intro
permalink: /angular/intro
---

{{ page.title }}

- Install the angular
```
sudo npm install -g @angular/cli
```
- Check the angular version
```
ng --version
```
- Creating component using Angular CLI
```
ng g c demo

g - generate
c - compoent

if the component name is of two words then seperate with -

ng g c hello-world

```
- Creating component manually
```
- create a component class
export class DemoComponent{
}
- import the Component module from the @angular/core
import { Component } from '@angular/core';
- add the Component declarator above the class
 @Component({
   selector: 'demo',
   templateUrl: './demo.component.html'
   styleUrls: ['./demo.component.css']

})
- add the component to the declarations in the app.module.ts
```

- for simple routes we can use routerLink 
```
<a routerLink="/followers">
```
- for route parameters, we should use property binding syntax
```
<a [routerLink]="['/followers', follower.id]"

first element is the route and the subsequent elements are the parameters
```
