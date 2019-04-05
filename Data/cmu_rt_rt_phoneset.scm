;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                     ;;;
;;;                     Carnegie Mellon University                      ;;;
;;;                  and Alan W Black and Kevin Lenzo                   ;;;
;;;                      Copyright (c) 1998-2000                        ;;;
;;;                        All Rights Reserved.                         ;;;
;;;                                                                     ;;;
;;; Permission is hereby granted, free of charge, to use and distribute ;;;
;;; this software and its documentation without restriction, including  ;;;
;;; without limitation the rights to use, copy, modify, merge, publish, ;;;
;;; distribute, sublicense, and/or sell copies of this work, and to     ;;;
;;; permit persons to whom this work is furnished to do so, subject to  ;;;
;;; the following conditions:                                           ;;;
;;;  1. The code must retain the above copyright notice, this list of   ;;;
;;;     conditions and the following disclaimer.                        ;;;
;;;  2. Any modifications must be clearly marked as such.               ;;;
;;;  3. Original authors' names are not deleted.                        ;;;
;;;  4. The authors' names are not used to endorse or promote products  ;;;
;;;     derived from this software without specific prior written       ;;;
;;;     permission.                                                     ;;;
;;;                                                                     ;;;
;;; CARNEGIE MELLON UNIVERSITY AND THE CONTRIBUTORS TO THIS WORK        ;;;
;;; DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING     ;;;
;;; ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT  ;;;
;;; SHALL CARNEGIE MELLON UNIVERSITY NOR THE CONTRIBUTORS BE LIABLE     ;;;
;;; FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES   ;;;
;;; WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN  ;;;
;;; AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,         ;;;
;;; ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF      ;;;
;;; THIS SOFTWARE.                                                      ;;;
;;;                                                                     ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Phonset for cmu_rt
;;;

;;;  Feel free to add new feature values, or new features to this
;;;  list to make it more appropriate to your language

;; This is where it'll fall over if you haven't defined a 
;; a phoneset yet, if you have, delete this, if you haven't
;; define one then delete this error message
;;(error "You have not yet defined a phoneset for rt (and others things ?)\n            Define it in festvox/cmu_rt_rt_phoneset.scm\n")

(defPhoneSet

  radio

  ;;;  Phone Features

  (;; vowel or consonant

   (vc + -)  

   ;; vowel length: schwa

    (vlng s 0) ;; Not a feature of St. Lawrence Island Yupik

   ;; vowel height: high mid low

   (vheight 1 2 3 0)

   ;; vowel frontness: front mid back

   (vfront 1 2 3 0)

   ;; lip rounding

    (vrnd + - 0)

   ;; consonant type: stop fricatives nasals

   (ctype s f n 0)

   ;; place of articulation: labial dental alveolar velar uvular glottal

   (cplace l d a v u g 0)

   ;; consonant voicing

   (cvox + - 0)

   )

  ;; Phone set members

  (

   ;; Note these features were set by awb so they are wrong !!!

   (a  +   0   2   3   -   0   0   0) ;; ata - father

   (u  +   0   1   3   +   0   0   0) ;; una - this one

   (i  +   0   1   1   -   0   0   0) ;; iya - eye

   (e  +   s   3   3   +   0   0   0) ;; meq - water ;; tepet - odors

   (p  -   0   0   0   -   s   l   -) ;; 

   (v  -   0   0   0   -   f   l   +) ;;

   (f  -   0   0   0   -   f   l   -)

   (m  -   0   0   0   -   n   l   +)

   (mm   -   0   0   0   -   n   l   -)

   (t  -   0   0   0   -  s   a   -)

   (l   -   0   0   0   -   f   a   +)

   (ll  -   0   0   0   -   f   a   -)

   (n  -   0   0   0   -   n   a   +) 

   (nn  -   0   0   0   -   n   a   -) 

   (z  -   0   0   0   -   f   a   +)

   (y  -   0   0   0   -   f   a   +)

   (s  -   0   0   0   -   f   a   -)

   (r  -   0   0   0   -   f   a   +)

   (rr  -   0   0   0   -   f   a   -)

   (k   -   0   0   0   -   s   v   -)

   (g   -   0   0   0   -   f   v   +)
   
   (gg   -   0   0   0   -   f   v   -)

   (ng   -   0   0   0   -   n   v   +)

   (ngng   -   0   0   0   -   n   v   -)

   (kw   -   0   0   0   +   s   v   -)

   (w   -   0   0   0   +   f   v   +)
   
   (wh   -   0   0   0   +   f   v   -)

   (ngw   -   0   0   0   +   n   v   +)

   (ngngw   -   0   0   0   +   n   v   -)

   (q  -   0   0   0   -   s   u   -)

   (gh   -   0   0   0   -   f   u   +)

   (ghh   -   0   0   0   -   f   u   -)

   (qw  -   0   0   0   +   s   u   -)

   (ghw   -   0   0   0   +   f   u   +)

   (ghhw   -   0   0   0   +   f   u   -)

   (h  -   0   0   0   -   f   g   -)

  )

)

(PhoneSet.silences '(pau))

(define (cmu_rt_rt::select_phoneset)
  "(cmu_rt_rt::select_phoneset)
Set up phone set for cmu_rt."
  (Parameter.set 'PhoneSet 'cmu_rt)
  (PhoneSet.select 'cmu_rt)
)

(define (cmu_rt_rt::reset_phoneset)
  "(cmu_rt_rt::reset_phoneset)
Reset phone set for cmu_rt."
  t
)

(provide 'cmu_rt_rt_phoneset)
