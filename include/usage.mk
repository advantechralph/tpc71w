
define bar
$(shell printf "#%.0s" {1..55})
endef

define title
$(shell printf "# %-51s #" "")
$(shell printf "# %-51s #" "Advantech $(modelname) BSP Usage")
$(shell printf "# %-51s #" "")
endef

define usage_info

$(call bar)
$(call title)
$(call bar)

  Create BSP: 
  
    $$ make bsp
  
    or 
  
    $$ make modelname=tpc71wn10pa_soreel bsp
  
    or 
  
    $$ make modelname=tpc71wn21pa bsp


  Supported Model Name: 

    tpc71wn10pa, tpc71wn21pa, tpc71wn10pa_soreel, tpc71wn21pa_soreel

  Check information: 

    ex: 
      make info modelname=tpc71wn21pa_soreel

endef

export usage_info

usage help: 
	@echo "$${usage_info}"

default: usage;

