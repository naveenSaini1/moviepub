import { endpoints } from '@/constants/UrlConstants';
import { AdminContextApi } from '@/contextApi/AdminContextApi';
import fetchApi from '@/utils/FetchApi';
import { useContext, useEffect, useState } from 'react';

export default function CreateGenreArea() {
const {token} =  useContext(AdminContextApi);
  // Simulated pre-existing lists (these would likely come from an API or database)
  const [categories, setCategories] = useState([]);
  const [collections, setCollections] = useState([]);
  const [years, setYears] = useState([]);
  const [languages, setLanguages] = useState([]);

 
    // Fetch the genres

    useEffect(() => {
      const abortController = new AbortController();
      const signal = abortController.signal;
    
      const fetchWithAbort = async (url, setter) => {
        try {
          const response = await fetch(url, { signal });
          const data = await response.json();
          setter(data);
        } catch (error) {
          if (error.name !== 'AbortError') {
            console.error('Fetch error:', error);
          }
        }
      };
    
      fetchWithAbort(`${endpoints.public.genres}/1`, setCategories);
      fetchWithAbort(`${endpoints.public.collections}/1`, setCollections);
      fetchWithAbort(`${endpoints.public.years}/1`, setYears);
      fetchWithAbort(`${endpoints.public.languages}/1`, setLanguages);
    
      return () => abortController.abort(); // Cleanup function to abort ongoing fetch requests
    }, []);
    
   
  // States for new inputs
  const [newCategory, setNewCategory] = useState('');
  const [newCollection, setNewCollection] = useState('');
  const [newYear, setNewYear] = useState('');
  const [newLanguage, setNewLanguage] = useState('');

  // Handle adding a category
  const handleAddCategory = async() => {
    if (newCategory && !categories.includes(newCategory)) {
      await fetchApi(`${endpoints.admin.genres}`, 'POST',token.current , {name: newCategory})
      setCategories([...categories, {name:newCategory,genresId:-(categories.length)}]);
      setNewCategory('');
    }
  };

  // Handle adding a collection
  const handleAddCollection = async () => {
    if (newCollection && !collections.includes(newCollection)) {
      console.log(token.current);
     await fetchApi(`${endpoints.admin.collections}`, 'POST',token.current , {name: newCollection})
      setCollections([...collections, {name:newCollection,collectionsId:-(collections.length)}]);
      setNewCollection('');
    
    }
  };

  // Handle adding a year
  const handleAddYear =async () => {
    if (newYear && !years.includes(newYear)) {
      await fetchApi(`${endpoints.admin.years}`, 'POST',token.current , {name: newYear})
      setYears([...years, {name:newYear,yearsId:-(years.length)}]);
      setNewYear('');
    }
  };

  // Handle adding a language
  const handleAddLanguage =async () => {
    if (newLanguage && !languages.includes(newLanguage)) {
      await fetchApi(`${endpoints.admin.languages}`, 'POST',token.current , {name: newLanguage})
      setLanguages([...languages, {name:newLanguage,languagesId:-(languages.length)}]);
      setNewLanguage('');
    }
  };

  // Handle deleting a category
  const handleDeleteCategory = async (genreId) => {
    console.log(genreId);
    if(genreId < 0){
      alert("This is a new genre, please go to another section and come back to delete it");
      return;
    }
    let result= await fetchApi(`${endpoints.admin.genres}/${genreId}`, 'DELETE',token.current)

    setCategories(categories.filter(genre => genre.genreId !== genreId));
  };

  // Handle deleting a collection
  const handleDeleteCollection = async (id) => {
    console.log(id);
    if (id < 0) {
      alert("This is a new collection, please go to another section and come back to delete it");
      return;
    }
    let result = await    fetchApi(`${endpoints.admin.collections}/${id}`, 'DELETE',token.current)
    setCollections(collections.filter(collection => collection.collectionsId !== id));
  };

  // Handle deleting a year
  const handleDeleteYear =async (yearId) => {
    if(yearId < 0){
      alert("This is a new year, please go to another section and come back to delete it");
      return;
    }
    let result= await fetchApi(`${endpoints.admin.years}/${yearId}`, 'DELETE',token.current)
    setYears(years.filter(year => year.yearId !== yearId));
  };

  // Handle deleting a language
  const handleDeleteLanguage = async (languageId) => {
    if(languageId < 0){
      alert("This is a new language, please go to another section and come back to delete it");
      return;
    }
   await fetchApi(`${endpoints.admin.languages}/${languageId}`, 'DELETE',token.current)
    setLanguages(languages.filter(language => language.languagesId !== languageId));
  };

  // handle update 
  const handleUpdateCollection = async (id) => { 
    if (id < 0) {
      alert("This is a new collection, please go to another section and come back to update it");
      return;
    }
    let newName = prompt("Please enter new name for collection");
    if(newName){
      let result = await fetchApi(`${endpoints.admin.collections}/${id}/${newName}`, 'POST',token.current)
        setCollections(collections.map(collection => collection.collectionsId === id ? {...collection, name:newName} : collection));
      
    }
  }
  const handleUpdateGenre = async (id) => { 
    if (id < 0) {
      alert("This is a new Genre, please go to another section and come back to update it");
      return;
    }
    let newName = prompt("Please enter new name for Genre");
    if(newName){
      await fetchApi(`${endpoints.admin.genres}/${id}/${newName}`, 'POST',token.current)
        setCategories(categories.map(genre => genre.genreId=== id ? {...genre, name:newName} : genre));
      
    }
  }
  const handleUpdateLanguage = async (id) => { 
    if (id < 0) {
      alert("This is a new Langauge, please go to another section and come back to update it");
      return;
    }
    let newName = prompt("Please enter new name for Langauge");
    if(newName){
       await fetchApi(`${endpoints.admin.languages}/${id}/${newName}`, 'POST',token.current)
        setLanguages(languages.map(language => language.languagesId === id ? {...language, name:newName} : language));
      
    }
  }

  const handleUpdateYear = async (id) => { 
    if (id < 0) {
      alert("This is a new Year, please go to another section and come back to update it");
      return;
    }
    let newName = prompt("Please enter new name for Year");
    if(newName){
      await fetchApi(`${endpoints.admin.years}/${id}/${newName}`, 'POST',token.current)
        setYears(years.map(year => year.yearId === id ? {...year, name:newName} : year));
      
    }
  }

  return (
    <div className="min-h-screen bg-gray-50 p-6">
      <h1 className="text-3xl font-bold mb-6">Manage Movie Data</h1>
      
      {/* geners */}
      <div className="mb-8">
        <h2 className="text-2xl font-semibold mb-2">Geners</h2>
        <div className="mb-4">
          <input
            type="text"
            placeholder="Add new Genre"
            value={newCategory}
            onChange={(e) => setNewCategory(e.target.value)}
            className="p-2 border border-gray-300 rounded-md mr-2"
          />
          <button
            onClick={handleAddCategory}
            className="bg-blue-500 text-white p-2 rounded-md hover:bg-blue-600"
          >
            Add Gener
          </button>
        </div>
        <ul className="space-y-2">
          {categories?.map((genre) => (
            <li key={genre.genreId} className="flex justify-between items-center">
              <span>{genre.name}</span>
              <div>
              <button
                onClick={() => handleDeleteCategory(genre.genreId)}
                className="text-red-500 hover:text-red-700"
              >
                Delete
              </button>
              <button
                onClick={() => handleUpdateGenre(genre.genreId)}
                className="bg-green-500 pl-2 pr-2   hover:text-red-700 ml-2"
              >
                update
              </button>
              </div>
            </li>
          ))}
        </ul>
      </div>

      {/* Collections */}
      <div className="mb-8">
        <h2 className="text-2xl font-semibold mb-2">Collections</h2>
        <div className="mb-4">
          <input
            type="text"
            placeholder="Add new collection"
            value={newCollection}
            onChange={(e) => setNewCollection(e.target.value)}
            className="p-2 border border-gray-300 rounded-md mr-2"
          />
          <button
            onClick={handleAddCollection}
            className="bg-green-500 text-white p-2 rounded-md hover:bg-green-600"
          >
            Add Collection
          </button>
        </div>
        <ul className="space-y-2">
          {collections?.map((collection, index) => (
            <li key={collection.collectionsId} className="flex justify-between items-center">
              <span>{collection.name}</span>
              <div className='flex'>
              <button
                onClick={() => handleDeleteCollection(collection.collectionsId)}
                className="text-red-500 hover:text-red-700"
              >
                Delete
              </button>
              <button
                onClick={() => handleUpdateCollection(collection.collectionsId)}
                className="bg-green-500 pl-2 pr-2   hover:text-red-700 ml-2"
              >
                update
              </button>
              </div>
             
            </li>
          ))}
        </ul>
      </div>

      {/* Years */}
      <div className="mb-8">
        <h2 className="text-2xl font-semibold mb-2">Years</h2>
        <div className="mb-4">
          <input
            type="number"
            placeholder="Add new year"
            value={newYear}
            onChange={(e) => setNewYear(e.target.value)}
            className="p-2 border border-gray-300 rounded-md mr-2"
          />
          <button
            onClick={handleAddYear}
            className="bg-yellow-500 text-white p-2 rounded-md hover:bg-yellow-600"
          >
            Add Year
          </button>
        </div>
        <ul className="space-y-2">
          {years.map((year) => (
            <li key={year.yearId} className="flex justify-between items-center">
              <span>{year.name}</span>
              <div>
              <button
                onClick={() => handleDeleteYear(year.yearId)}
                className="text-red-500 hover:text-red-700"
              >
                Delete
              </button>
              <button
                onClick={() => handleUpdateYear(year.yearId)}
                className="bg-green-500 pl-2 pr-2   hover:text-red-700 ml-2"
              >
                update
              </button>
              </div>
            </li>
          ))}
        </ul>
      </div>

      {/* Languages */}
      <div className="mb-8">
        <h2 className="text-2xl font-semibold mb-2">Languages</h2>
        <div className="mb-4">
          <input
            type="text"
            placeholder="Add new language"
            value={newLanguage}
            onChange={(e) => setNewLanguage(e.target.value)}
            className="p-2 border border-gray-300 rounded-md mr-2"
          />
          <button
            onClick={handleAddLanguage}
            className="bg-purple-500 text-white p-2 rounded-md hover:bg-purple-600"
          >
            Add Language
          </button>
        </div>
        <ul className="space-y-2">
          {languages.map((language) => (
            <li key={language.languagesId} className="flex justify-between items-center">
              <span>{language.name}</span>
              <div>
              <button
                onClick={() => handleDeleteLanguage(language.languagesId)}
                className="text-red-500 hover:text-red-700"
              >
                Delete
              </button>
              <button
                onClick={() => handleUpdateLanguage(language.languagesId)}
                className="bg-green-500 pl-2 pr-2   hover:text-red-700 ml-2"
              >
                update
              </button>
              </div>
            </li>
          ))}
        </ul>
      </div>
    </div>
  );
}
