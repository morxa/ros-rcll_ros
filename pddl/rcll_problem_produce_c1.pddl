(define (problem rcll-prod-c1-prob1)
	(:domain rcll-prod-c1)

	(:objects
		R-1 - robot
		o1 - order
		wp1 - workpiece
		cc1 cc2 cc3 - cap-carrier
		C-BS C-CS1 C-CS2 C-DS C-RS1 C-RS2 - mps
		CYAN - team-color
	)
	 
	(:init
	 (mps-type C-BS BS)
	 (mps-type C-CS1 CS)
	 (mps-type C-CS1 CS)
	 (mps-type C-DS DS)
	 (mps-type C-RS1 RS)
	 (mps-type C-RS2 RS)
	 (location-free START INPUT)
	 (location-free C-BS INPUT)
	 (location-free C-BS OUTPUT)
	 (location-free C-CS1 INPUT)
	 (location-free C-CS1 OUTPUT)
	 (location-free C-CS2 INPUT)
	 (location-free C-CS2 OUTPUT)
	 (location-free C-DS INPUT)
	 (location-free C-DS OUTPUT)
	 (location-free C-RS1 INPUT)
	 (location-free C-RS1 OUTPUT)
	 (location-free C-RS2 INPUT)
	 (location-free C-RS2 OUTPUT)
	 ; (location-allowed C-BS)
	 ; (location-allowed C-CS1)
	 ; (location-allowed C-CS2)
	 ; (location-allowed C-DS)
	 ; (location-allowed C-RS1)
	 ; (location-allowed C-RS2)
	 (cs-can-perform C-CS1 CS_RETRIEVE)
	 (cs-can-perform C-CS2 CS_RETRIEVE)
	 (cs-free C-CS1)
	 (cs-free C-CS2)
	 (wp-base-color wp1 BASE_NONE)
	 (wp-cap-color wp1 CAP_NONE)
	 (wp-ring1-color wp1 RING_NONE)
	 (wp-ring2-color wp1 RING_NONE)
	 (wp-ring3-color wp1 RING_NONE)
	 (wp-unused wp1)
	 (robot-waiting R-1)
	 (mps-state C-BS IDLE)
 	 (mps-state C-CS1 IDLE)
 	 (mps-state C-CS2 IDLE)
	 (mps-state C-DS IDLE)
 	 (mps-state C-RS1 IDLE)
 	 (mps-state C-RS2 IDLE)

	 (wp-cap-color cc1 CAP_GREY)
	 (wp-on-shelf cc1 C-CS1 LEFT)

	 (rs-ring-spec C-RS1 RING_GREEN)
	 (rs-ring-spec C-RS1 RING_YELLOW)
	 (rs-ring-spec C-RS2 RING_BLUE)
	 (rs-ring-spec C-RS2 RING_ORANGE)

	 (order-complexity o1 c1)
	 (order-base-color o1 BASE_BLACK)
	 (order-ring1-color o1 RING_GREEN)
	 (order-cap-color o1 CAP_GREY)

	 ;(wp-at wp1 C-RS1 INPUT)
	 ;(holding R-1 wp1)
	 ;(at R-1 C-RS1 INPUT)
	 ;(mps-state C-RS1 PREPARED)
	 ;(rs-prepared-color C-RS1 RING_GREEN)
	)

	;(:goal (and (wp-base-color wp1 BASE_BLACK) (wp-ring1-color wp1 RING_GREEN) (wp-cap-color wp1 CAP_GREY)
	;						(holding R-1 wp1) (at R-1 C-DS INPUT)))
	(:goal (order-fulfilled o1) )

	;(:goal (wp-at cc1 C-CS1 OUTPUT) )
	;(:goal (and (cs-buffered C-CS1 CAP_BLACK) (mps-state C-CS1 IDLE)))
	;(:goal (and (wp-base-color wp1 BASE_RED) (wp-cap-color wp1 CAP_BLACK)))
	;(:goal (holding R-1 cc1))
	;(:goal (wp-base-color wp1 BASE_RED))
)
