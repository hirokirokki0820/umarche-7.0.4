import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["menu", "content", "user_menu"]

  menuClick(event){
    // const menus = this.menuTargets
    // const current = event.currentTarget
    // const currentIndex = menus.indexOf(current)
    // const contents = this.contentTargets

    // menus.forEach((menu, index)=>{
    //   if(current.classList.contains("not-active")){
    //     menu.classList.remove("is-active")
    //     menu.classList.add("not-active")
    //     contents[index].classList.add("hidden")
    //   }
    // })

    // if(current.classList.contains("not-active")){
    //   current.classList.remove("not-active")
    //   current.classList.add("is-active")
    //   contents[currentIndex].classList.remove("hidden")
    // }
  }

  userMenuClick(){
    const userMenuBtn = this.user_menuTarget
    if(userMenuBtn.classList.contains("hidden")){
      userMenuBtn.classList.remove("hidden")
    }else{
      userMenuBtn.classList.add("hidden")
    }
  }

}
