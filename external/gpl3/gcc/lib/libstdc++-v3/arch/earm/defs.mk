# This file is automatically generated.  DO NOT EDIT!
# Generated from: 	NetBSD: mknative-gcc,v 1.66 2012/01/10 12:27:54 skrll Exp 
# Generated from: NetBSD: mknative.common,v 1.9 2007/02/05 18:26:01 apb Exp 
#
G_LIBSUPCXX_SOURCES=array_type_info.cc atexit_arm.cc bad_cast.cc bad_typeid.cc class_type_info.cc del_op.cc del_opnt.cc del_opv.cc del_opvnt.cc dyncast.cc eh_alloc.cc eh_arm.cc eh_aux_runtime.cc eh_call.cc eh_catch.cc eh_exception.cc eh_globals.cc eh_personality.cc eh_ptr.cc eh_term_handler.cc eh_terminate.cc eh_throw.cc eh_type.cc eh_unex_handler.cc enum_type_info.cc function_type_info.cc fundamental_type_info.cc guard.cc new_handler.cc new_op.cc new_opnt.cc new_opv.cc new_opvnt.cc pbase_type_info.cc pmem_type_info.cc pointer_type_info.cc pure.cc si_class_type_info.cc tinfo.cc tinfo2.cc vec.cc vmi_class_type_info.cc vterminate.cc
G_LIBSUPCXX_C_SOURCES=cp-demangle.c 
G_SRC_SOURCES=atomic.cc bitmap_allocator.cc pool_allocator.cc mt_allocator.cc codecvt.cc compatibility.cc compatibility-c++0x.cc compatibility-debug_list.cc compatibility-list.cc complex_io.cc ctype.cc debug.cc functexcept.cc globals_io.cc hash_c++0x.cc hash_tr1.cc hashtable_c++0x.cc hashtable_tr1.cc ios.cc ios_failure.cc ios_init.cc ios_locale.cc limits.cc list.cc debug_list.cc locale.cc locale_init.cc locale_facets.cc localename.cc math_stubs_float.cc math_stubs_long_double.cc stdexcept.cc strstream.cc system_error.cc tree.cc allocator-inst.cc concept-inst.cc fstream-inst.cc ext-inst.cc ios-inst.cc iostream-inst.cc istream-inst.cc istream.cc locale-inst.cc misc-inst.cc ostream-inst.cc sstream-inst.cc streambuf-inst.cc streambuf.cc string-inst.cc valarray-inst.cc wlocale-inst.cc wstring-inst.cc mutex.cc condition_variable.cc chrono.cc thread.cc future.cc atomicity.cc codecvt_members.cc collate_members.cc ctype_members.cc messages_members.cc monetary_members.cc numeric_members.cc time_members.cc  basic_file.cc c++locale.cc
G_atomicity_file=${GNUHOSTDIST}/libstdc++-v3/config/cpu/generic/atomicity_mutex/atomicity.h
G_CCODECVT_CC=config/locale/generic/codecvt_members.cc
G_CCOLLATE_CC=config/locale/generic/collate_members.cc
G_CCTYPE_CC=config/locale/generic/ctype_members.cc
G_CMESSAGES_CC=config/locale/generic/messages_members.cc
G_CMONEY_CC=config/locale/generic/monetary_members.cc
G_CNUMERIC_CC=config/locale/generic/numeric_members.cc
G_CTIME_CC=config/locale/generic/time_members.cc
G_CLOCALE_CC=config/locale/generic/c_locale.cc
G_BASIC_FILE_CC=config/io/basic_file_stdio.cc
G_SECTION_FLAGS=-ffunction-sections -fdata-sections
G_c_base_headers=cassert ccomplex cctype cerrno cfenv cfloat cinttypes ciso646 climits clocale cmath csetjmp csignal cstdarg cstdbool cstddef cstdint cstdio cstdlib cstring ctgmath ctime cwchar cwctype
G_std_headers=algorithm array atomic bitset chrono complex condition_variable deque forward_list fstream functional future iomanip ios iosfwd iostream istream iterator limits list locale map memory mutex numeric ostream queue random ratio regex set sstream stack stdexcept streambuf string system_error thread tuple type_traits unordered_map unordered_set utility valarray vector
G_bits_headers=algorithmfwd.h allocator.h atomic_base.h atomicfwd_c.h atomicfwd_cxx.h atomic_0.h atomic_2.h basic_ios.h basic_ios.tcc basic_string.h basic_string.tcc boost_concept_check.h c++0x_warning.h char_traits.h codecvt.h concept_check.h cpp_type_traits.h deque.tcc forward_list.h forward_list.tcc fstream.tcc functexcept.h functional_hash.h gslice.h gslice_array.h hashtable.h hashtable_policy.h indirect_array.h ios_base.h istream.tcc list.tcc locale_classes.h locale_classes.tcc locale_facets.h locale_facets.tcc locale_facets_nonio.h locale_facets_nonio.tcc localefwd.h mask_array.h move.h ostream.tcc ostream_insert.h postypes.h random.h random.tcc stream_iterator.h streambuf_iterator.h shared_ptr.h shared_ptr_base.h slice_array.h sstream.tcc stl_algo.h stl_algobase.h stl_bvector.h stl_construct.h stl_deque.h stl_function.h stl_heap.h stl_iterator.h stl_iterator_base_funcs.h stl_iterator_base_types.h stl_list.h stl_map.h stl_multimap.h stl_multiset.h stl_numeric.h stl_pair.h stl_queue.h stl_raw_storage_iter.h stl_relops.h stl_set.h stl_stack.h stl_tempbuf.h stl_tree.h stl_uninitialized.h stl_vector.h streambuf.tcc stringfwd.h unique_ptr.h unordered_map.h unordered_set.h valarray_array.h valarray_array.tcc valarray_before.h valarray_after.h vector.tcc
G_backward_headers=auto_ptr.h backward_warning.h binders.h hash_map hash_set hash_fun.h hashtable.h strstream
G_ext_headers=algorithm atomicity.h array_allocator.h bitmap_allocator.h cast.h codecvt_specializations.h concurrence.h debug_allocator.h enc_filebuf.h extptr_allocator.h stdio_filebuf.h stdio_sync_filebuf.h functional iterator malloc_allocator.h memory mt_allocator.h new_allocator.h numeric numeric_traits.h pod_char_traits.h pointer.h pool_allocator.h rb_tree rope ropeimpl.h slist string_conversions.h throw_allocator.h typelist.h type_traits.h rc_string_base.h sso_string_base.h vstring.h vstring.tcc vstring_fwd.h vstring_util.h hash_set hash_map
G_c_base_headers_extra=cmath.tcc
G_host_headers=ctype_base.h ctype_inline.h ctype_noninline.h os_defines.h atomic_word.h cxxabi_tweaks.h cpu_defines.h error_constants.h stdc++.h stdtr1c++.h extc++.h
G_debug_headers=bitset debug.h deque formatter.h functions.h list map macros.h map.h multimap.h multiset.h safe_base.h safe_iterator.h safe_iterator.tcc safe_sequence.h set set.h string unordered_map unordered_set vector
G_tr1_headers=array bessel_function.tcc beta_function.tcc ccomplex cctype cfenv cfloat cinttypes climits cmath complex complex.h cstdarg cstdbool cstdint cstdio cstdlib ctgmath ctime ctype.h cwchar cwctype ell_integral.tcc exp_integral.tcc fenv.h float.h functional functional_hash.h gamma.tcc hypergeometric.tcc hashtable.h hashtable_policy.h inttypes.h limits.h math.h memory modified_bessel_func.tcc poly_hermite.tcc poly_laguerre.tcc legendre_function.tcc random random.h random.tcc regex riemann_zeta.tcc shared_ptr.h special_function_util.h stdarg.h stdbool.h stdint.h stdio.h stdlib.h tgmath.h tuple type_traits unordered_map unordered_map.h unordered_set unordered_set.h utility wchar.h wctype.h
G_c_compatibility_headers_extra=complex.h fenv.h tgmath.h stdatomic.h
G_tr1_impl_headers=array boost_sp_counted_base.h cctype cfenv cinttypes cmath complex cstdint cstdio cstdlib cwchar cwctype regex type_traits utility
G_parallel_headers=algo.h algobase.h algorithm algorithmfwd.h balanced_quicksort.h base.h basic_iterator.h checkers.h compatibility.h compiletime_settings.h equally_split.h features.h find.h find_selectors.h for_each.h for_each_selectors.h iterator.h list_partition.h losertree.h merge.h multiseq_selection.h multiway_merge.h multiway_mergesort.h numeric numericfwd.h omp_loop.h omp_loop_static.h par_loop.h parallel.h partial_sum.h partition.h queue.h quicksort.h random_number.h random_shuffle.h search.h set_operations.h settings.h sort.h tags.h types.h unique_copy.h workstealing.h
G_decimal_headers=decimal decimal.h
G_thread_host_headers=gthr.h gthr-single.h gthr-posix.h gthr-tpf.h gthr-default.h
G_host_headers_extra=basic_file.h c++config.h c++allocator.h c++io.h c++locale.h messages_members.h time_members.h
G_UNWIND_H=${GNUHOSTDIST}/gcc/config/arm/unwind-arm.h
